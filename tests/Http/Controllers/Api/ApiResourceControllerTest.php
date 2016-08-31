<?php

use App\Hero;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Api\ResourceController;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class ApiResourceControllerTest extends TestCase
{
    use DatabaseMigrations;

    /**
     * @return void
     */
    public function testListResourceReturnsTheCorrectResource()
    {
        $heroes = factory(Hero::class, 50)->create();
        $hero = $heroes->get(2);

        $this->call('GET', '/api/v1/hero');

        $this->assertResponseOk();

        $this->seeJson([
            'id' => $hero->id,
            'name' => $hero->name,
            'description' => $hero->description,
        ]);
    }

    /**
     * @return void
     */
    public function testShowResourceReturnsTheCorrectResource()
    {
        $heroes = factory(Hero::class, 50)->create();
        $hero = $heroes->get(15);

        $this->call('GET', sprintf('/api/v1/hero/%s', $hero->id));

        $this->assertResponseOk();

        $this->seeJson([
            'id' => $hero->id,
            'name' => $hero->name,
            'description' => $hero->description,
        ]);
    }

    /**
     * @return void
     */
    public function testListInvalidResourceReturnsPageNotFound()
    {
        $this->call('GET', '/api/v1/cake');

        $this->assertResponseStatus(404);
    }

    /**
     * @return void
     */
    public function testShowInvalidResourceReturnsPageNotFound()
    {
        $this->call('GET', '/api/v1/cake/99');

        $this->assertResponseStatus(404);
    }

    /**
     * @return void
     */
    public function testNonShowableResourceCannotBeShown()
    {
        $model = Mockery::mock(Model::class);

        $this->setExpectedException(NotFoundHttpException::class);

        $controller = new ResourceController();
        $controller->showResource($model, 1);

        $this->assertResponseStatus(404);
    }

    /**
     * @return void
     */
    public function testNonListableResourceCannotBeListed()
    {
        $model = Mockery::mock(Model::class);
        $request = Mockery::mock(Request::class);

        $this->setExpectedException(NotFoundHttpException::class);

        $controller = new ResourceController();
        $controller->listResource($model, $request);

        $this->assertResponseStatus(404);
    }
}
