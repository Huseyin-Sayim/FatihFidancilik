<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Services;
use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
//    public function __construct()
//    {
//        $this->middleware('auth');
//    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $all_services = Services::query()->get();
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'home';
        $address_url = Settings::query()->where(['key' => 'maps'])->get();
        $blogs = DB::table("blog")->leftJoin("gallery", "blog.blog_image", "=", "gallery.id")->select("blog.*", "gallery.media_url")->limit(3)->get();
        $services = DB::table("services")->leftJoin("gallery", "services.service_image", "=", "gallery.id")->select("services.*", "gallery.media_url")->get();
        return view('index', compact(['services', 'blogs', 'address_url','title', 'address', 'all_services', 'phone']));
    }
}
