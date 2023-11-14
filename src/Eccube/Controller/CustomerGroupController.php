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

use Eccube\Common\EccubeConfig;
use Eccube\Repository\CompanyRepository;
use Eccube\Repository\CustomerRepository;
use Eccube\Repository\CustomerGroupRepository;
use Eccube\Controller\AbstractController;
use Eccube\Entity\CustomerGroup;
use Symfony\Component\Routing\Annotation\Route;

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
     * @var CustomerGroupRepository
     */
    protected $customerGroupRepository;

    /**
     * @var EccubeConfig
     */
    protected $shop_api_business_id;

    public function __construct(
        CompanyRepository $companyRepository,
        CustomerRepository $customerRepository,
        CustomerGroupRepository $customerGroupRepository,
        EccubeConfig $eccubeConfig
    )
    {
        $this->companyRepository = $companyRepository;
        $this->customerRepository = $customerRepository;
        $this->customerGroupRepository = $customerGroupRepository;
        $this->shop_api_business_id = $eccubeConfig['shop_api_business_id'];
    }

    /**
     * Method này dùng để thực hiện đăng ký company cho customer
     * 
     * @Route("/addCustomerGroup", methods={"POST"})
     * @return \Symfony\Component\HttpFoundation\JsonResponse
     */
    public function addCustomerGroup()
    {
        // Kiểm tra businessId có hợp lệ hay không
        if( $this->shop_api_business_id !== $_POST['businessId'] ){
            // Ghi log lỗi
            log_info('API KEY NOT AUTH', [$_POST['businessId']]);
            return $this->json(['result' => 1, 'resultCode'=> 'businessId NOT FOUND']);
        }

        // Get accountId
        $accountId = $_POST['accountId'];
        
        // Get companyId
        $companyId = $_POST['companyId'];

        // Tìm kiếm company
        $company = $this->companyRepository->find($companyId);

        // Kiểm tra tồn tại của customer, company, customerGroup
        if(!$company){
            // Ghi log lỗi
            log_info('Register customer group fail.', [$companyId]);
            return $this->json(['result' => 1, 'resultCode'=> 'Company not exist.']);
        }

        // Tìm kiếm customer
        $customer = $this->customerRepository->find($accountId);

        // Kiểm tra tồn tại của customer, company, customerGroup
        if(!$customer){
            // Ghi log lỗi
            log_info('Register customer group fail.', [$accountId]);
            return $this->json(['result' => 1, 'resultCode'=> 'Customer not exist.']);
        }

        // Tìm kiếm customer group theo accountId
        $customerGroup = $this->customerGroupRepository->find($accountId);

        // Kiểm tra tồn tại của customer
        if($customerGroup){
            // Ghi log lỗi
            log_info('Register customer group fail.', [$customerGroup->getAccountId()]);
            return $this->json(['result' => 1, 'resultCode'=> 'Customer Group có account_id = ' . $accountId . ' đã tồn tại.']);
        }

        // Tìm kiếm customer group theo companyId
        $customerGroup = $this->customerGroupRepository->findBy(['company_id'=> $companyId]);

        if($customerGroup){
            // Ghi log lỗi
            log_info('Register customer group fail.', [$companyId]);
            return $this->json(['result' => 1, 'resultCode'=> 'Customer Group có company_id = ' . $companyId .' đã tồn tại.']);
        }

        //Create customerGroup
        $customerGroup = new CustomerGroup();

        $customerGroup->setAccountId($accountId);
        $customerGroup->setCompanyId($companyId);

        log_info('Start register customer group.', [$customerGroup->getAccountId()]);

        $this->entityManager->persist($customerGroup);
        $this->entityManager->flush();

        log_info('Register customer group success.', [$customerGroup->getAccountId()]);

        return $this->json(['result' => 0, 'resultCode'=> 'Register customer group success.']);
    }
}