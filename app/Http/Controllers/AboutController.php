<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Services;
use App\Models\Settings;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'about';
        $about_text = Settings::query()->where(['key' => 'about'])->get();
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        return view('pages.about', compact(['about_text', 'title', 'address', 'all_services', 'phone']));
    }
}
