<?php

namespace App\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use App\Entity\Characters;

class HelloController extends FOSRestController
{
	/**
	 * @Route("/", name="hello")
     */
    public function indexAction(): Response
    {
        $characters = $this->getDoctrine()->getRepository(Characters::class)->findAll();
        /* dd($characters); */
        return new JsonResponse([
            'hello' => $characters
        ]);
    }

    /**
     * @Route("/character/{$id}", name="character")
     */
    public function getCharacter($id): Response
    {
        $character = $this->getDoctrine()->getRepository(Characters::class)
        ->find($id);
        /* if (!$product) {
            throw $this->createNotFoundException(
                'le personnage n\'a pas été trouvé à cette id '.$id
            );
        } */

        return new Response($character->getName());
    }
    /**
     * @Route("/characters", name="characters")
     */

     public function getAllCharacters(): Response 
     {
         $characters = $this->getDoctrine()->getRepository(Characters::class)->findAll();


     }
}
