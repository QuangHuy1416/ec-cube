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

namespace Eccube\Form\Type;

use Eccube\Repository\CustomerRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Eccube\Common\EccubeConfig;
use Symfony\Component\Form\AbstractType;

use Symfony\Component\Form\Extension\Core\Type\SearchType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Validator\Constraints as Assert;


class SearchCustomerBlockType extends AbstractType
{
    
    /**
     * @var EccubeConfig
     */
    protected $eccubeConfig;

    /**
     * @var CustomerRepository
     */
    protected $customerRepository;

    /**
     * SearchCustomerBlockType constructor.
     *
     * @param CustomerRepository $customerRepository
     * @param EccubeConfig $eccubeConfig
     */
    public function __construct(CustomerRepository $customerRepository, EccubeConfig $eccubeConfig)
    {
        $this->customerRepository = $customerRepository;
        $this->eccubeConfig = $eccubeConfig;
    }

    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('multi', TextType::class, [
            'label' => 'admin.customer.multi_search_label',
            'required' => false,
            'constraints' => [
                new Assert\Length(['max' => $this->eccubeConfig['eccube_stext_len']]),
            ],
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'csrf_protection' => false,
            'allow_extra_fields' => true,
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'search_customer_block';
    }
}
