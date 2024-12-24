<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Settings;
use Illuminate\Support\Facades\Session;

class SettingsController extends Controller
{
    public function index()
    {
        $settings = Settings::query()->get();
        $title = 'Ayarlar';
        $sub_title = '';
        return view('admin.settings.settings', compact('settings', 'title', 'sub_title'));
    }

    public function edit($id)
    {
        $settings = Settings::query()->findOrFail($id);
        $title = 'Ayarlar';
        $sub_title = 'Güncelle';
        return view('admin.settings.settings_edit', compact(['settings', 'title', 'sub_title']));
    }

    public function update(Request $request, $id)
    {
        $settings = Settings::query()->findOrFail($id);
        $settings->name = $request->settings_name;
        $settings->value = $request->settings_value;

        if ($settings->update()) {
            Session::put('update_settings', 'success');
        } else {
            Session::put('update_settings', 'error');
        };

        return redirect("admin/settings");
    }
}
