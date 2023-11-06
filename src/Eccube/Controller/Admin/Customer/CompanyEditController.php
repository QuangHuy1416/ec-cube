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

namespace Eccube\Controller\Admin\Customer;

use Eccube\Controller\AbstractController;
use Eccube\Entity\Master\CustomerStatus;
use Eccube\Event\EccubeEvents;
use Eccube\Event\EventArgs;
use Eccube\Form\Type\Admin\CompanyType;
use Eccube\Repository\CompanyRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\EncoderFactoryInterface;

class CompanyEditController extends AbstractController
{
    /**
     * @var CompanyRepository
     */
    protected $companyRepository;

    /**
     * @var EncoderFactoryInterface
     */
    protected $encoderFactory;

    public function __construct(
        CompanyRepository $companyRepository,
        EncoderFactoryInterface $encoderFactory
    ) {
        $this->companyRepository = $companyRepository;
        $this->encoderFactory = $encoderFactory;
    }

    /**
     * @Route("/%eccube_admin_route%/cus/new", name="admin_company_new")
     * @Template("@admin/Company/create.twig")
     */
    public function index(Request $request, $id = null)
    {
        $this->entityManager->getFilters()->enable('incomplete_order_status_hidden');
        // 編集
        if ($id) {
            $Company = $this->companyRepository
                ->find($id);

            if (is_null($Company)) {
                throw new NotFoundHttpException();
            }

            $oldStatusId = $Company->getStatus()->getId();
        // 新規登録
        } else {
            //$Company = $this->companyRepository->create();
        }

        // 会員登録フォーム
        $builder = $this->formFactory
            ->createBuilder(CompanyType::class, $Company);

        $event = new EventArgs(
            [
                'builder' => $builder,
                'Company' => $Company,
            ],
            $request
        );
        $this->eventDispatcher->dispatch(EccubeEvents::ADMIN_COMPANY_EDIT_INDEX_INITIALIZE, $event);

        $form = $builder->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            log_info('Start register company', [$Company->getId()]);

            $encoder = $this->encoderFactory->getEncoder($Company);

            $this->entityManager->persist($Company);
            $this->entityManager->flush();

            log_info('Register company success. ', [$Company->getId()]);

            $event = new EventArgs(
                [
                    'form' => $form,
                    'Company' => $Company,
                ],
                $request
            );
            $this->eventDispatcher->dispatch(EccubeEvents::ADMIN_CUSTOMER_EDIT_INDEX_COMPLETE, $event);

            $this->addSuccess('admin.common.save_complete', 'admin');

            return $this->redirectToRoute('admin_customer_edit', [
                'id' => $Company->getId(),
            ]);
        }

        return [
            'form' => $form->createView(),
            'Company' => $Company,
        ];
    }
}
