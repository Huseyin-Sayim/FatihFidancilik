<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\HomeController as AdminHomeController;
use App\Http\Controllers\admin\ProfileController;
use App\Http\Controllers\admin\GalleryController;
use App\Http\Controllers\admin\BlogController;
use App\Http\Controllers\admin\SettingsController;
use App\Http\Controllers\admin\ServiceController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ServiceController as FrontServices;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\GalleryController as FrontGallery;
use App\Http\Controllers\BlogController as FrontBlogs;
use App\Http\Controllers\ContactController;


Auth::routes();


Route::prefix('admin')->middleware('auth')->group(function () {
    Route::get('/', [AdminHomeController::class, 'index'])->name('admin.home');

    Route::prefix('gallery')->group(function () {
        Route::get("/", [GalleryController::class, "index"])->name("gallery");
        Route::get("/create", [GalleryController::class, "create"])->name("gallery.create");
        Route::post("store", [GalleryController::class, "store"])->name("gallery.store");
        Route::get("/edit/{id}", [GalleryController::class, "edit"])->name("gallery.edit");
        Route::post("/update/{id}", [GalleryController::class, "update"])->name("gallery.update");
        Route::get("/delete/{id}", [GalleryController::class, "delete"])->name("gallery.delete");
    });

    Route::prefix('blogs')->group(function () {
        Route::get('/', [BlogController::class, 'index'])->name('blog');
        Route::get('/create', [BlogController::class, 'create'])->name('blog.create');
        Route::post('/store', [BlogController::class, 'store'])->name('blog.store');
        Route::get('/edit/{id}', [BlogController::class, 'edit'])->name('blog.edit');
        Route::post('/update/{id}', [BlogController::class, 'update'])->name('blog.update');
        Route::get('/delete/{id}', [BlogController::class, 'delete'])->name('blog.delete');
    });

    Route::prefix("profile")->group(function () {
        Route::get('/', [ProfileController::class, "index"])->name("profile");
        Route::get('/edit', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::post('/update', [ProfileController::class, 'update'])->name('profile.update');
    });

    Route::prefix('settings')->group(function () {
        Route::get('/', [SettingsController::class, 'index'])->name('settings');
        Route::get('/edit/{id}', [SettingsController::class, 'edit'])->name('settings.edit');
        Route::post('/edit/{id}', [SettingsController::class, 'update'])->name('settings.update');
    });

    Route::prefix('services')->group(function () {
        Route::get('/', [ServiceController::class, 'index'])->name('services');
        Route::get('/create', [ServiceController::class, 'create'])->name('services.create');
        Route::post('/create', [ServiceController::class, 'store'])->name('services.store');
        Route::get('/edit/{id}', [ServiceController::class, 'edit'])->name('services.edit');
        Route::post('/update/{id}', [ServiceController::class, 'update'])->name('services.update');
        Route::get('/delete/{id}', [ServiceController::class, 'delete'])->name('services.delete');
    });
});

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/hakkimizda', [AboutController::class, 'index'])->name('about');

Route::prefix('fidan-cesitlerimiz')->group(function () {
    Route::get('/', [FrontServices::class, 'index'])->name('front.services');
    Route::get('/{id}', [FrontServices::class, 'details'])->name('front.services.details');
});

Route::get('/galeri', [FrontGallery::class, 'index'])->name('front.gallery');

Route::prefix('yazilarimiz')->group(function () {
    Route::get('/', [FrontBlogs::class, 'index'])->name('front.blogs');
    Route::get('/{id}', [FrontBlogs::class, 'details'])->name('front.blogs.details');
});

Route::get('/iletisim', [ContactController::class, 'index'])->name('contact');
