<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Services extends Model
{
    protected $table = 'services';

    public function gallery()
    {
        return $this->hasOne(Gallery::class, "id", "service_image");
    }
}