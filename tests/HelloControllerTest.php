<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use GuzzleHttp\HandlerStack;
use GuzzleHttp\Client;
use GuzzleHttp\Handler\MockHandler;
use GuzzleHttp\Psr7\Response;

class HelloControllerTest extends WebTestCase
{
	protected function setUp()
	{
		$mock = new MockHandler([new Response(200, [])]);
		$handler = HandlerStack::create($mock);
		$this->client = new Client(['handler' => $handler]);
	}

	public function testIndex()
	{
		/* $response = $this->client->get('/', [
			'json' => [
				'hello' => 'This is a simple example of resource returned by your APIs'
			]
		]); */

		$name = 'blub';

		$data = array(
			'name' => $name,
			'tagline' => 'dis iz a test'
		);

		$response = $this->client->post('/addCharacter', [
			'body' => json_encode($data)
		]);
		dd($data);
		$this->assertEquals(200, $response->getStatusCode());
	}

}
