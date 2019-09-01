<!-- 
namespace App\Tests\Controller;
/* require __DIR__.'/vendor/autoload.php'; */
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use GuzzleHttp\HandlerStack;
use GuzzleHttp\Client;
use GuzzleHttp\Handler\MockHandler;
use GuzzleHttp\Psr7\Response;
$client = new Client([
    'base_url' => 'http://localhost:8000',
    'defaults' => [
        'exceptions' => false
    ]
]);

$name = 'blub';

$data = array(
    'name' => $name,
    'tagline' => 'dis iz a test'
);

$response = $client->post('/addCharacter', [
    'body' => json_encode($data)
]);

echo $response;
echo '/n/n'; -->