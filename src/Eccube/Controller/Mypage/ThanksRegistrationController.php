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

namespace Eccube\Controller\Mypage;

use Eccube\Controller\AbstractController;
use Eccube\Repository\CustomerRepository;
use Eccube\Event\EccubeEvents;
use Eccube\Event\EventArgs;
use Eccube\Form\Type\SearchCustomerBlockType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Eccube\Util\FormUtil;


class ThanksRegistrationController extends AbstractController
{
    /**
     * @var CustomerRepository
     */
    protected $customerRepository;

    /**
     * ThanksRegistrationController constructor.
     *
     * @param CustomerRepository $customerRepository
     */
    public function __construct(
        CustomerRepository $customerRepository
    ) {
        $this->customerRepository = $customerRepository;
    }

    /**
     * 退会画面.
     *
     * @Route("/mypage/thanks_registration", name="mypage_thanks_registration")
     * @Template("Mypage/thanks_registration.twig")
     */
    public function index(Request $request)
    {
        $builder = $this->formFactory->createBuilder(SearchCustomerBlockType::class);

        $event = new EventArgs(
            [
                'builder' => $builder,
            ],
            $request
        );

        $this->eventDispatcher->dispatch(EccubeEvents::FRONT_BLOCK_SEARCH_CUSTOMER_INDEX_INITIALIZE, $event);
        
        $searchForm = $builder->getForm();

        if ('POST' === $request->getMethod()) {

            $searchForm->handleRequest($request);

            if ($searchForm->isValid()) {
                $searchData = $searchForm->getData();
            } else {
                return [
                    'searchForm' => $searchForm->createView(),
                    'customers' => [],
                    'has_errors' => true,
                ];
            }
        } else {
            $viewData = FormUtil::getViewData($searchForm);
            $searchData = FormUtil::submitAndGetData($searchForm, $viewData);
        }

        // Get query
        $qb = $this->customerRepository->getQueryBuilderBySearchData($searchData);

        // Get customer by key search
        $customer = $qb->getQuery()->getResult();

        return [
            'searchForm' => $searchForm->createView(),
            'customers' => $customer
        ];
    }
}