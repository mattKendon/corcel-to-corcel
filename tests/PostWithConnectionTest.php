<?php

class PostWithConnection extends \Corcel\Post
{
    protected $with = ['connections'];

    public function connections()
    {
        return $this->hasMany('\CorcelToCorcel\Connection', 'p2p_to');
    }
}

class PostWithConnectionTest extends PHPUnit_Framework_TestCase
{
    /** @test */
    public function it_can_fetch_all_its_connections()
    {
        $post = PostWithConnection::find(1);
        $this->assertInstanceOf('\CorcelToCorcel\ConnectionMetaCollection', $post->connections);
    }

    /** @test */
    public function it_can_fetch_a_connection_by_type()
    {
        $post = PostWithConnection::type('1');
        $connection = $post->connections()->first();
        $this->assertInstanceOf('\CorcelToCorcel\ConnectionMetaCollection', $connection->p2p_type);
    }
}
