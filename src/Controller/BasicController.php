<?php

namespace App\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use App\Entity\Characters;
use App\Entity\Game;

class BasicController extends FOSRestController
{
	/**
	 * @Route("/", name="charactersHome")
     */

    public function indexAction(): Response
    {
        // Get all characters
        $characters = $this->getDoctrine()->getRepository(Characters::class)->findAll();
        /* $game = $this->getDoctrine()->getRepository(Game::class)->findAll(); */
        /* dd($characters,$game); */
        $data = $this->get('serializer')->serialize($characters,'json');
        return new Response($data);
    
    }

    /**
     * @Route("/character/{id}", name="characterId", methods={"GET"})
     */

    public function getCharacterById($id): Response
    {
        $character = $this->getDoctrine()->getRepository(Characters::class)
        ->find($id);
        /* if (!$product) {
            throw $this->createNotFoundException(
                'le personnage n\'a pas été trouvé à cette id '.$id
            );
        } */
        $data = $this->get('serializer')->serialize($character,'json');
        return new Response($data);
    }

    /**
     * @Route("/characters", name="characters")
     */

     public function getAllCharacters(): Response 
     {
        $characters = $this->getDoctrine()->getRepository(Characters::class)->findAll();
        /* $game = $this->getDoctrine()->getRepository(Game::class)->findAll(); */
        /* dd($characters,$game); */
        $data = $this->get('serializer')->serialize($characters,'json');
        return new Response($data);
     }

     /**
      * @Route("/characters/{game}", name="charactersByGame")
      */

    public function getCharactersByGame($game): Response
    {
        $characters = $this->getDoctrine()->getRepository(Characters::class)->findByGame($game);
        $data = $this->get('serializer')->serialize($characters,'json');
        return new Response($data);
    }

    /**
     * @Route("/games", name="games")
     */

     public function getAllGames(): Response
     {
         $games = $this->getDoctrine()->getRepository(Game::class)->findAll();
         $data = $this->get('serializer')->serialize($games,'json');
        return new Response($data);
     }

     /**
      * @Route("/game/{id}", name="gameId")
      */

     public function getGameById($id): Response
     {
        $game = $this->getDoctrine()->getRepository(Game::class)->find($id);
        $data = $this->get('serializer')->serialize($game,'json');
        return new Response($data);
     }

     /**
      * @Route("/addCharacter", name="addCharacter")
      */

}
