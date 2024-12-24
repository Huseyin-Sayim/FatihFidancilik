<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Services;
use App\Models\Settings;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index ()
    {

        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'contact';
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        $about = Settings::query()->where(['key' => 'about'])->get();
        $maps = Settings::query()->where(['key' => 'maps'])->get();
        return view('pages.contact', compact(['all_services', 'address', 'title', 'phone', 'about', 'maps']));
    }
}
