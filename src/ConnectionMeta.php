<?php

namespace CorcelToCorcel;


use Exception;
use Illuminate\Database\Eloquent\Model as Eloquent;

class ConnectionMeta extends Eloquent
{
    protected $primaryKey = 'meta_id';
    public $table = 'p2pmeta';
    public $timestamps = false;
    protected $fillable = ['p2p_id', 'meta_key', 'meta_value'];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = ['value'];

    /**
     * Post relationship
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function connection()
    {
        return $this->belongsTo('CorcelToCorcel\Connection');
    }

    /**
     * Gets the value.
     * Tries to unserialize the object and returns the value if that doesn't work.
     *
     * @return value
     */
    public function getValueAttribute()
    {
        try {
            $value = unserialize($this->meta_value);
            // if we get false, but the original value is not false then something has gone wrong.
            // return the meta_value as is instead of unserializing
            // added this to handle cases where unserialize doesn't throw an error that is catchable
            return $value === false && $this->meta_value !== false ? $this->meta_value : $value;
        } catch (Exception $ex) {
            return $this->meta_value;
        }
    }

    /**
     * Override newCollection() to return a custom collection
     * @param array $models
     * @return \CorcelToCorcel\ConnectionMetaCollection
     */
    public function newCollection(array $models = array())
    {
        return new ConnectionMetaCollection($models);
    }

}