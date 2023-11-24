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
use Eccube\Entity\Master\CustomerStatus;
use Eccube\Event\EccubeEvents;
use Eccube\Event\EventArgs;
use Eccube\Repository\Master\CustomerStatusRepository;
use Eccube\Form\Type\SearchCustomerBlockType;
use Eccube\Service\MailService;
use Eccube\Util\StringUtil;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorage;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;

class ThanksRegistrationController extends AbstractController
{
    /**
     * @var MailService
     */
    protected $mailService;

    /**
     * @var CustomerStatusRepository
     */
    protected $customerStatusRepository;

    /**
     * @var TokenStorage
     */
    protected $tokenStorage;

    /**
     * @var RequestStack
     */
    protected $requestStack;

    /**
     * ThanksRegistrationController constructor.
     *
     * @param MailService $mailService
     * @param CustomerStatusRepository $customerStatusRepository
     * @param TokenStorageInterface $tokenStorage
     */
    public function __construct(
        MailService $mailService,
        CustomerStatusRepository $customerStatusRepository,
        TokenStorageInterface $tokenStorage,
        RequestStack $requestStack
    ) {
        $this->mailService = $mailService;
        $this->customerStatusRepository = $customerStatusRepository;
        $this->tokenStorage = $tokenStorage;
        $this->requestStack = $requestStack;
    }

    /**
     * 退会画面.
     *
     * @Route("/mypage/thanks_registration", name="mypage_thanks_registration")
     * @Template("Mypage/gift.twig")
     */
    public function index(Request $request)
    {
        $builder = $this->formFactory
            ->createNamedBuilder('', SearchCustomerBlockType::class)
            ->setMethod('GET');

        $event = new EventArgs(
            [
                'builder' => $builder,
            ],
            $request
        );

        $this->eventDispatcher->dispatch(EccubeEvents::FRONT_BLOCK_SEARCH_PRODUCT_INDEX_INITIALIZE, $event);

        $request = $this->requestStack->getMasterRequest();

        $form = $builder->getForm();
        $form->handleRequest($request);

        return [
            'form' => $form->createView(),
        ];
    }
}
