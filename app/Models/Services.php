<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Services extends Model
{
    protected $table = 'services';

    public function gallery()
    {
        return $this->hasOne(Gallery::class, "id", "service_image");
    }

    protected static function boot ()
    {
        parent::boot();

        static::creating( function ($service) {
            $service->slug = Str::slug($service->service_title);
        });
    }
}
