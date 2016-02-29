<?php
/**
 * Created by PhpStorm.
 * User: tolik
 * Date: 24.02.16
 * Time: 18:56
 */

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\EntityRepository;

class BlogRepository extends EntityRepository
{
	/**
	 * Получаем массив тэгов
	 * @param {void}
	 * @return array
	 */
	public function getTags()
	{
		$blogTags = $this->createQueryBuilder('b')
			->select('b.tags')
			->getQuery()
			->getResult();

		$tags = array();
		foreach ($blogTags as $blogTag)
		{
			$tags = array_merge(explode(",", $blogTag['tags']), $tags);
		}

		foreach ($tags as &$tag)
		{
			$tag = trim($tag);
		}

		return $tags;
	}

	/**
	 * Получаем вес тэгов (сколько раз тэг встречается)
	 * @param {array} $tags
	 * @return array
	 */
	public function getTagWeights($tags)
	{
		$tagWeights = array();
		if (empty($tags))
			return $tagWeights;

		foreach ($tags as $tag)
		{
			$tagWeights[$tag] = (isset($tagWeights[$tag])) ? $tagWeights[$tag] + 1 : 1;
		}

		uksort($tagWeights, function() {
			return rand() > rand();
		});

		$max = max($tagWeights);

		$multiplier = ($max > 5) ? 5 / $max : 1;
		foreach ($tagWeights as &$tag)
		{
			$tag = ceil($tag * $multiplier);
		}

		return $tagWeights;
	}

	/**
	 * Ищем записи, сортируем по дате и если указан лимит то выводим столько сколько указанно
	 * @param {number|null} $limit
	 * @return array
	 */
	public function findAllOrderedByDate($limit = null)
	{
		$query = $this->getEntityManager()
			->createQueryBuilder()
			->select('b')
			->from('BloggerBlogBundle:Blog',  'b')
			->addOrderBy('b.created', 'DESC');

		if ($limit != null && $limit > 0) {
			$query->setMaxResults($limit);
		}

		return $query
			->getQuery()
			->getResult();
	}

	/**
	 * Ищем запись по id
	 * @param {number} $id
	 * @return Blog|null|object
	 */
	public function findForId($id)
	{
		return $this->getEntityManager()->find('BloggerBlogBundle:Blog', $id);
	}

	/**
	 * По сути повторение findAllOrderedByDate
	 * @param {number|null} $limit
	 * @return array
	 */
	public function getLatestBlogs($limit = null)
	{
		$qb = $this->createQueryBuilder('b')
			->select('b, c')
			->leftJoin('b.comments', 'c')
			->addOrderBy('b.created', 'DESC');

		if (false === is_null($limit))
			$qb->setMaxResults($limit);

		return $qb->getQuery()
			->getResult();
	}
}
