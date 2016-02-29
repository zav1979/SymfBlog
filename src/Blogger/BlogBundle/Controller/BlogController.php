<?php
/**
 * Created by PhpStorm.
 * User: tolik
 * Date: 24.02.16
 * Time: 19:19
 */

namespace Blogger\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


use Blogger\BlogBundle\Entity\Comment;

class BlogController extends Controller
{
	/**
	 * Вывод записей на экран
	 * @param {number} $id
	 * @return \Symfony\Component\HttpFoundation\Response
	 */
	public function ShowAction($id)
	{
		$em = $this->getDoctrine()->getManager();
		$blog = $em->getRepository('BloggerBlogBundle:Blog')->findForId($id);

		if (!$blog) {
			throw $this->createNotFoundException('Не найдена запись с id ' . $id);
		}

		$comments = $em->getRepository('BloggerBlogBundle:Comment')
			->getCommentsForBlog($id);

		return $this->render('BloggerBlogBundle:Blog:show.html.twig', array(
			'blog'=>$blog, 'comments'=>$comments
		));
	}
}