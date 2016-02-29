<?php
// src/Blogger/BlogBundle/Entity/Repository/CommentRepository.php

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\EntityRepository;


class CommentRepository extends EntityRepository
{
	/**
	 * Получаем коментарии к блогам
	 * @param number $blogId
	 * @param boolean $approved
	 * @return array
	 */
	public function getCommentsForBlog($blogId, $approved = true)
	{
		$qb = $this->createQueryBuilder('c')
			->select('c')
			->where('c.blog = :blog_id')
			->addOrderBy('c.created')
			->setParameter('blog_id', $blogId);

		if (false === is_null($approved))
			$qb->andWhere('c.approved = :approved')
				->setParameter('approved', $approved);

		return $qb->getQuery()
			->getResult();
	}

	/**
	 * Получаем коменты с сортировкой по дате и если указан лимит то выводим столь сколько указанно
	 * @param number $limit
	 * @return array
	 */
	public function getLatestComments($limit = 10)
	{
		$db = $this->createQueryBuilder('c')
			->select('c')
			->addOrderBy('c.id', 'DESC');

		if ($limit != is_null($limit)) {
			$db->setMaxResults($limit);
		}

		return $db->getQuery()
					->getResult();



	}

}