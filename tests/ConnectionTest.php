<?php

use Corcel\Post;
use CorcelToCorcel\Connection;
use CorcelToCorcel\ConnectionMetaCollection;

class ConnectionWithType extends Connection
{
    public $connectionType = 'post_post';
}

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
        $connection = Connection::type('post_post')->first();
        $this->assertInstanceOf(Connection::class, $connection);
        $this->assertEquals('post_post', $connection->p2p_type);

        $connectionWithType = ConnectionWithType::first();
        $this->assertInstanceOf(Connection::class, $connectionWithType);
        $this->assertEquals('post_post', $connectionWithType->p2p_type);
    }

    /** @test */
    public function it_can_get_the_connected_posts()
    {
        $connection = Connection::find(1);
        $this->assertInstanceOf(Post::class, $connection->to);
        $this->assertInstanceOf(Post::class, $connection->from);
    }

    /** @test */
    public function it_can_get_associated_meta_data()
    {
        $connection = Connection::find(1);
        $this->assertInstanceOf(ConnectionMetaCollection::class, $connection->meta);
    }
}
