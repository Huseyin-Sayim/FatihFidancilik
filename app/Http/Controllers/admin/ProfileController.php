<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use App\Models\User;

class ProfileController extends Controller
{
    public function index()
    {
        $title = "Profil";
        $sub_title = "";
        return view("admin.profile.profile", compact(['title', 'sub_title']));
    }

    public function edit()
    {
        $title = "Profil";
        $sub_title = "Güncelle";
        return view("admin.profile.edit_profile", compact(['title', 'sub_title']));
    }

    public function update (Request $request)
    {
        $user = User::query()->findOrFail(auth()->user()->id)->makeVisible('password');
        if ((Hash::check($request->old_password, $user->password)) && ($request->new_pass == $request->new_pass_repeat)) {
            $user->name = $request->username;
            $user->email = $request->email;
            $user->password = Hash::make($request->new_pass);
            if ($user->update()) {
                Session::put('edit_profile', "success");
            } else {
                Session::put('edit_profile', "error");
            }
        } else {
            Session::put('confirm_password', "error");
        };
        return redirect('admin/profile');
    }
}
