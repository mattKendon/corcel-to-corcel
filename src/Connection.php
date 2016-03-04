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
        return $this->belongsTo('Corcel\Post', 'p2p_to', 'ID');
    }

    public function from()
    {
        return $this->belongsTo('Corcel\Post', 'p2p_from', 'ID');
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

    /**
     * add new where method if connectionType has been set for this model
     *
     * @return Builder
     */
    public function newQuery()
    {
        $builder = parent::newQuery();

        if (isset($this->connectionType) and $this->connectionType) {
            $builder->where('p2p_type', $this->connectionType);
        }

        return $builder;
    }

    /**
     * Before saving the connection, save any updated ConnectionMeta models
     *
     * @param array $options
     * @return bool
     */
    public function save(array $options = array())
    {
        if (isset($this->attributes[$this->primaryKey])) {
            $this->meta->save($this->attributes[$this->primaryKey]);
        }

        return parent::save($options);
    }
}