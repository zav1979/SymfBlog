<?php
// src/Blogger/BlogBundle/DataFixtures/ORM/CommentFixtures.php

namespace Blogger\BlogBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Blogger\BlogBundle\Entity\Comment;
use Blogger\BlogBundle\Entity\Blog;

class CommentFixtures extends AbstractFixture implements OrderedFixtureInterface
{
	public function load(ObjectManager $manager)
	{
		$comment = new Comment();
		$comment->setUser('Первый юзер');
		$comment->setComment('первый комент');
		$comment->setBlog($manager->merge($this->getReference('blog-1')));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Посетитель № 2');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-1')));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Dade');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Kate');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 06:15:20"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Dade');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 06:18:35"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Kate');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 06:22:53"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Dade');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 06:25:15"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Kate');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 06:46:08"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Dade');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 10:22:46"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Kate');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-23 11:08:08"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Dade');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-24 18:56:01"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Kate');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-2')));
		$comment->setCreated(new \DateTime("2011-07-25 22:28:42"));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Stanley');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-3')));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Gabriel');
		$comment->setComment('Коментарий посетителя № 2');
		$comment->setBlog($manager->merge($this->getReference('blog-3')));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Mile');
		$comment->setComment('Doesn\'t Bill Gates have something like that?');
		$comment->setBlog($manager->merge($this->getReference('blog-5')));
		$manager->persist($comment);

		$comment = new Comment();
		$comment->setUser('Gary');
		$comment->setComment('Bill Who?');
		$comment->setBlog($manager->merge($this->getReference('blog-5')));
		$manager->persist($comment);

		$manager->flush();
	}

	public function getOrder()
	{
		return 2;
	}
}
