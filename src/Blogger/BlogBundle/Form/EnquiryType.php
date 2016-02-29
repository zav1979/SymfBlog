<?php
/**
 * Created by PhpStorm.
 * User: tolik
 * Date: 24.02.16
 * Time: 15:16
 */

namespace Blogger\BlogBundle\Form;


use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class EnquiryType extends AbstractType
{
	/**
	 * Конструктор форм
	 * @param FormBuilderInterface $builder
	 * @param array $options
	 */
	public function buildForm(FormBuilderInterface $builder, array $options)
	{
		$builder
			->add('name')
			->add('email', EmailType::class)
			->add('subject')
			->add('body', TextareaType::class)
			->add('submit', SubmitType::class);
	}

	public function getBlockPrefix()
	{
		return 'contact';
	}
}























