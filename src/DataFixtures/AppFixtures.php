<?php

namespace App\DataFixtures;

use App\Entity\Characters;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\DependencyInjection\ContainerAwareInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;

class AppFixtures extends Fixture implements ContainerAwareInterface
{
    public function load(ObjectManager $manager)
    {
        $this->loadCharacters($manager);
	}

	private function loadCharacters(ObjectManager $manager)
    {
        $Characters = new Characters();
        $Characters->setName('Hero');
        $Characters->setGame('1');
        $Characters->setRange('MID');
        $manager->persist($Characters);
        $manager->flush();
    }

    public function setContainer(ContainerInterface $container = null): void
    {
        $this->container = $container;
    }
}
