<?php

namespace App\Repository;

use App\Entity\Characters;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

class CharacterRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Characters::class);
    }

    public function findByCharactername(string $Charactername): string
    {
        return $this->createQueryBuilder('u')
             ->where('u.Charactername = :Charactername ')
             ->setParameter('Charactername', $Charactername)
             ->getQuery()
             ->getOneOrNullResult();
    }
}