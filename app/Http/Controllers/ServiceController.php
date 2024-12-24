<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Services;
use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ServiceController extends Controller
{
    public function index()
    {
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'service';
        $services = DB::table("services")->leftJoin("gallery", "services.service_image", "=", "gallery.id")->select("services.*", "gallery.media_url")->get();
        return view('pages.services', compact(['title', 'services', 'address', 'all_services', 'phone']));
    }

    public function details ($id)
    {
        $all_services = Services::query()->get();
        $address = Settings::query()->where(['key' => 'address'])->get();
        $title = 'service';
        $phone = Settings::query()->where(['key' => 'phone'])->get();
        $service = Services::query()->findOrFail($id);
        $image = $service->gallery()->get();
        return view('pages.service_details', compact(['title', 'service', 'image', 'address', 'all_services', 'phone']));
    }
}
