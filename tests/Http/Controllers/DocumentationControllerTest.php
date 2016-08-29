<?php

class DocumentationControllerTest extends TestCase
{
    /**
     * @return void
     */
    public function testDocumentationResponseIsOk()
    {
        $response = $this->call('GET', '/docs/v1');

        $this->assertResponseOk();
    }

    /**
     * @return void
     */
    public function testInvalidDocumentationVersionReturnsNotFound()
    {
        $response = $this->call('GET', '/docs/v20');

        $this->assertResponseStatus(404);
    }
}
