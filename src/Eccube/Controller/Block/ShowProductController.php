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

namespace Eccube\Controller\Block;

use Eccube\Controller\AbstractController;
use Eccube\Repository\ProductRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\Routing\Annotation\Route;

class ShowProductController extends AbstractController
{
    /**
     * @var ProductRepository
     */
    protected $productRepository;

    /**
     * ShowProductController constructor.
     *
     * @param ProductRepository $productRepository
     */
    public function __construct(
        ProductRepository $productRepository
    ) {
        $this->productRepository = $productRepository;
    }

    /**
     * @Route("/block/show_product", name="block_show_product")
     * @Template("Block/show_products.twig")
     */
    public function index()
    {
        // Lấy tất cả sản phẩm
        $products = $this->productRepository->findAll();
        
        // Trả về màn hình hiển thị sản phẩm
        if(count($products) > 0){
            return [
                'products' => $products,
            ];
        } else {
            
        }
    }
}