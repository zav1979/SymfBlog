<?php

namespace Blogger\BlogBundle\Controller;

use Blogger\BlogBundle\Entity\Enquiry;
use Blogger\BlogBundle\Form\EnquiryType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class PageController extends Controller
{
	/**
	 * @return \Symfony\Component\HttpFoundation\Response
	 */
	public function indexAction($limit = null)
	{
		$em = $this->getDoctrine()->getRepository('BloggerBlogBundle:Blog');
		$blogs = $em->findAllOrderedByDate($limit);

		return $this->render('BloggerBlogBundle:Page:index.html.twig', array('blogs'=>$blogs));
	}

	/**
	 * @return \Symfony\Component\HttpFoundation\Response
	 */
	public function AboutAction()
	{
		return $this->render('BloggerBlogBundle:Page:about.html.twig');
	}

	/**
	 * @return \Symfony\Component\HttpFoundation\Response
	 */
	public function ContactAction(Request $request)
	{
		$enquiry = new Enquiry();
		$form = $this->createForm(EnquiryType::class, $enquiry);

		$form->handleRequest($request);

		if ($form->isSubmitted() && $form->isValid())
		{
			return $this->redirect($this->generateUrl('blogger_blog_contact'));
		}

		return $this->render('BloggerBlogBundle:Page:contact.html.twig', array(
			'form' => $form->createView()
		));
	}

	/**
	 * Выводим в боковую панель облако тэгов и коментарии
	 * @param {void}
	 * @return \Symfony\Component\HttpFoundation\Response
	 */
	public function  sidebarAction()
	{
		$em = $this->getDoctrine()->getManager();
		$rep = $em->getRepository('BloggerBlogBundle:Blog');

		$tags = $rep->getTags();
		$tagsWeights = $rep->getTagWeights($tags);

		$commentLimit = $this->container
			->getParameter('blogger_blog.comments.latest_comment_limit');

		$latestComments = $em->getRepository('BloggerBlogBundle:Comment')
			->getLatestComments($commentLimit);

		return $this->render('BloggerBlogBundle:Page:sidebar.html.twig', array(
			'latestComments'    => $latestComments,
			'tags'              => $tagsWeights
		));
	}
}
