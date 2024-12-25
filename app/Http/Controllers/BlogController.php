<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Services;
use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{
    public function index ()
    {
        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'blog';
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        $blogs = DB::table("blog")->leftJoin("gallery", "blog.blog_image", "=", "gallery.id")->select("blog.*", "gallery.media_url")->get();
        return view('pages.blogs', compact(['all_services', 'address', 'title', 'blogs', 'phone']));
    }

    public function details ($slug)
    {
        $parts = explode('-', $slug);
        $id = end($parts);
        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'blog';
        $blog = Blog::query()->findOrFail($id);
        $image = $blog->gallery()->get();
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        return view('pages.blog_details', compact(['all_services', 'address', 'title', 'blog', 'image', 'phone']));
    }

}
