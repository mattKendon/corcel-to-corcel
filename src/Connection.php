<?php

namespace CorcelToCorcel;


use Corcel\Post;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Connection extends Eloquent
{
    protected $table = 'p2p';
    public $primaryKey = 'p2p_id';
    public $timestamps = false;
    protected $fillable = ['p2p_id', 'p2p_to', 'p2p_from', 'p2p_type'];

    public function to()
    {
        return $this->hasOne(Post::class, 'ID', 'p2p_to');
    }

    public function from()
    {
        return $this->hasOne(Post::class, 'ID', 'p2p_from');
    }

    public function scopeType($query, $type)
    {
        return $query->where('p2p_type', $type);
    }


    /**
     * Meta data relationship.
     *
     * @return \CorcelToCorcel\ConnectionMetaCollection
     */
    public function meta()
    {
        return $this->hasMany('CorcelToCorcel\ConnectionMeta', 'p2p_id');
    }
}