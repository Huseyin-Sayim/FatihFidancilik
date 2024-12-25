<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Blog extends Model
{
    protected $table = 'blog';

    public function gallery()
    {
        return $this->hasOne(Gallery::class, 'id', 'blog_image');
    }

    protected static function boot ()
    {
        parent::boot();

        static::creating( function ($blog) {
            $blog->slug = Str::slug($blog->blog_title);
        });
    }
}
