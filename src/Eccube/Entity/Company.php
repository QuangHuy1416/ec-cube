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

namespace Eccube\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Validator\Mapping\ClassMetadata;

if (!class_exists('\Eccube\Entity\Customer')) {
    /**
     * Company
     *
     * @ORM\Table(name="dtb_company")
     * @ORM\InheritanceType("SINGLE_TABLE")
     * @ORM\DiscriminatorColumn(name="discriminator_type", type="string", length=255)
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\HasLifecycleCallbacks()
     * @ORM\Entity(repositoryClass="Eccube\Repository\CompanyRepository")
     */
    class Customer extends \Eccube\Entity\AbstractEntity
    {
        /**
         * @var int
         *
         * @ORM\Column(name="company_id", type="string")
         * @ORM\Id
         * @ORM\GeneratedValue(strategy="IDENTITY")
         */
        private $company_id;

        /**
         * @var string
         *
         * @ORM\Column(name="company_name", type="string", length=255)
         */
        private $company_name;

        /**
         * @var int
         *
         * @ORM\Column(name="customer_id", type="integer", options={"unsigned":true})
         */
        private $customer_id;

        /**
         * @var \DateTime
         *
         * @ORM\Column(name="create_date", type="datetimetz")
         */
        private $create_date;

        /**
         * @var \DateTime
         *
         * @ORM\Column(name="update_date", type="datetimetz")
         */
        private $update_date;

          /**
         * Set company_name.
         *
         * @param string $company_name
         *
         * @return Company
         */
        public function setCompanyName($company_name)
        {
            $this->company_name = $company_name;

            return $this;
        }

        /**
         * Get company_name.
         *
         * @return string
         */
        public function getCompanyName()
        {
            return $this->company_name;
        }

        /**
         * Set customer_id.
         *
         * @param int $customer_id
         *
         * @return Company
         */
        public function setCustomerId($customer_id)
        {
            $this->customer_id = $customer_id;

            return $this;
        }

        /**
         * Get customer_id.
         *
         * @return int
         */
        public function getCustomerId()
        {
            return $this->customer_id;
        }

        /**
         * Set createDate.
         *
         * @param \DateTime $createDate
         *
         * @return Customer
         */
        public function setCreateDate($createDate)
        {
            $this->create_date = $createDate;

            return $this;
        }

        /**
         * Get createDate.
         *
         * @return \DateTime
         */
        public function getCreateDate()
        {
            return $this->create_date;
        }

        /**
         * Set updateDate.
         *
         * @param \DateTime $updateDate
         *
         * @return Customer
         */
        public function setUpdateDate($updateDate)
        {
            $this->update_date = $updateDate;

            return $this;
        }

        /**
         * Get updateDate.
         *
         * @return \DateTime
         */
        public function getUpdateDate()
        {
            return $this->update_date;
        }

         /**
         * Constructor
         */
        public function __construct()
        {
            
        }
    }
}
