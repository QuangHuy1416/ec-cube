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

if (!class_exists('\Eccube\Entity\Company')) {
    /**
     * Company
     *
     * @ORM\Table(name="dtb_customer_group")
     * @ORM\InheritanceType("SINGLE_TABLE")
     * @ORM\DiscriminatorColumn(name="discriminator_type", type="string", length=255)
     * @ORM\HasLifecycleCallbacks()
     */
    class CustomerGroup extends \Eccube\Entity\AbstractEntity
    {
        /**
         * @var int
         *
         * @ORM\Column(name="id", type="int")
         * @ORM\GeneratedValue(strategy="AUTO")
         * @ORM\Id
         */
        private $id;

        /**
         * @var int
         *
         * @ORM\Column(name="customer_id", type="int")
         * @ORM\Id
         */
        private $customer_id;

        /**
         * @var string
         *
         * @ORM\Column(name="company_id", type="string", length=255)
         * @ORM\Id
         */
        private $company_id;

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
         * Set id.
         *
         * @param string $id
         *
         * @return CustomerGroup
         */
        public function setId($id)
        {
            $this->id = $id;

            return $this;
        }

        /**
         * Get id.
         *
         * @return string
         */
        public function getId()
        {
            return $this->id;
        }

        /**
         * Set customerId.
         *
         * @param int $customerId
         *
         * @return CustomerGroup
         */
        public function setCustomerId($customerId)
        {
            $this->customer_id = $customerId;

            return $this;
        }

        /**
         * Get customerId.
         *
         * @return int
         */
        public function getCustomerId()
        {
            return $this->customer_id;
        }

          /**
         * Set companyId.
         *
         * @param string $companyId
         *
         * @return CustomerGroup
         */
        public function setCompanyId($companyId)
        {
            $this->company_id = $companyId;

            return $this;
        }

        /**
         * Get companyId.
         *
         * @return string
         */
        public function getCompanyId()
        {
            return $this->company_id;
        }

        /**
         * Set createDate.
         *
         * @param \DateTime $createDate
         *
         * @return CustomerGroup
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
         * @return CustomerGroup
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

    }
}
