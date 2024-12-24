<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use App\Models\Services;
use App\Models\Settings;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    public function index ()
    {
        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'gallery';
        $gallery = Gallery::query()->get();
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        return view('pages.gallery', compact(['address', 'title', 'gallery', 'all_services', 'phone']));
    }
}
