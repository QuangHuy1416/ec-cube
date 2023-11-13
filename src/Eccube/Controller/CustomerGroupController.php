<?php

/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

 namespace Eccube\Controller;

use Doctrine\DBAL\Exception\ForeignKeyConstraintViolationException;
use Doctrine\ORM\QueryBuilder;
use Eccube\Common\Constant;
use Eccube\Common\EccubeConfig;
use Eccube\Repository\CompanyRepository;
use Eccube\Repository\CustomerRepository;
use Eccube\Controller\AbstractController;
use Eccube\Event\EventArgs;
use Eccube\Util\FormUtil;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Translation\TranslatorInterface;

class CustomerGroupController extends AbstractController
{
    /**
     * @var CompanyRepository
     */
    protected $companyRepository;

    /**
     * @var CustomerRepository
     */
    protected $customerRepository;


    /**
     * @var EccubeConfig
     */
    protected $shop_api_business_id;

    public function __construct(
        CompanyRepository $companyRepository,
        CustomerRepository $customerRepository,
        EccubeConfig $eccubeConfig
    )
    {
        $this->companyRepository = $companyRepository;
        $this->customerRepository = $customerRepository;
        $this->shop_api_business_id = $eccubeConfig['shop_api_business_id'];
    }
    /**
     * @Route("/addCustomerGroup")
     */
    public function index()
    {
        $businessId = $_POST['businessId'];
        $accountId = $_POST['accountId'];
        $companyId = $_POST['companyId'];
        if( $this->shop_api_business_id !== $_POST['businessId'] ){
            return 1;
        }
        $company = $this->companyRepository->find($companyId);
        $customer = $this->customerRepository->find($accountId);
        if($company && $customer)
        {
            echo $businessId . $accountId . $companyId ;
        }
        die;
    }
}
