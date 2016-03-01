<?php

use Corcel\Post;
use CorcelToCorcel\Connection;

class ConnectionTest extends PHPUnit_Framework_TestCase
{
    /** @test */
    public function it_can_be_created()
    {
        $connection = new Connection();
        $this->assertInstanceOf(Connection::class, $connection);
    }

    /** @test */
    public function it_can_be_fetched_by_its_primary_id()
    {
        $connection = Connection::find(1);
        $this->assertInstanceOf(Connection::class, $connection);
        $this->assertEquals(1, $connection->p2p_id);
    }

    /** @test */
    public function it_can_be_fetched_by_its_type()
    {
        $connection = Connection::type('post_page')->first();
        $this->assertInstanceOf(Connection::class, $connection);
        $this->assertEquals('post_page', $connection->p2p_type);
    }

    /** @test */
    public function it_can_get_the_connected_posts()
    {
        $connection = Connection::find(1);
        $this->assertInstanceOf(Post::class, $connection->to);
        $this->assertInstanceOf(Post::class, $connection->from);
    }
}
