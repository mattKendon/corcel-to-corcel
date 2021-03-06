<?php

namespace CorcelToCorcel;

use Illuminate\Database\Eloquent\Collection;

class ConnectionMetaCollection extends Collection
{

    protected $changedKeys = array();

    /**
     * Search for the desired key and return only the row that represent it
     *
     * @param string $key
     * @return string
     */
    public function __get($key)
    {
        foreach ($this->items as $item) {
            if ($item->meta_key == $key) {
                return $item->value;
            }
        }
    }

    public function __set($key, $value)
    {
        $this->changedKeys[] = $key;

        foreach ($this->items as $item) {
            if ($item->meta_key == $key) {
                $item->meta_value = $value;
                return;
            }
        }

        $item = new ConnectionMeta([
            'meta_key' => $key,
            'meta_value' => $value,
        ]);

        $this->push($item);
    }

    public function save($connectionId)
    {
        $this->each(function($item) use ($connectionId) {
            if (in_array($item->meta_key, $this->changedKeys)) {
                $item->p2p_id = $connectionId;
                $item->save();
            }
        });
    }
}