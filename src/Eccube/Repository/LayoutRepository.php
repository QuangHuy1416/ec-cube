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

namespace Eccube\Repository;

use Doctrine\ORM\NoResultException;
use Eccube\Common\EccubeConfig;
use Eccube\Entity\Layout;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * LayoutRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class LayoutRepository extends AbstractRepository
{
    /**
     * @var EccubeConfig
     */
    protected $eccubeConfig;

    public function __construct(RegistryInterface $registry,EccubeConfig $eccubeConfig)
    {
        parent::__construct($registry, Layout::class);
        $this->eccubeConfig = $eccubeConfig;
    }

    public function get($id)
    {
        try {
            $Layout = $this->createQueryBuilder('l')
                ->select('l, bp, b')
                ->leftJoin('l.BlockPositions', 'bp')
                ->leftJoin('bp.Block', 'b')
                ->where('l.id = :id')
                ->orderBy('bp.block_row', 'ASC')
                ->setParameter('id', $id)
                ->getQuery()
                ->useResultCache(true, $this->getCacheLifetime())
                ->getSingleResult();
        } catch (NoResultException $e) {
            return null;
        }

        return $Layout;
    }
}
