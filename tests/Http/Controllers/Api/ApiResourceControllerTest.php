<?php

use App\Hero;
use Illuminate\Foundation\Testing\DatabaseMigrations;

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
}
