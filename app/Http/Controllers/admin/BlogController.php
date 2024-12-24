<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Models\Blog;

class BlogController extends Controller
{
    public function index()
    {
        $title = 'Blog';
        $sub_title = '';
        $blogs = DB::table('blog')->leftJoin('gallery', 'blog.blog_image', '=', 'gallery.id')->select('blog.*', 'gallery.media_url')->get();
        return view('admin.blogs.blog', compact(['title', 'sub_title', 'blogs']));
    }

    public function create ()
    {
        $title = 'Blog';
        $sub_title = 'Ekle';
        $gallery = Gallery::query()->get();
        return view('admin.blogs.create_blog', compact(['title', 'sub_title', 'gallery']));
    }

    public function store (Request $request)
    {
        $blog = new Blog();
        $blog->blog_title = $request->blog_title;
        $blog->blog_text = $request->blog_text;
        $blog->blog_image = $request->blog_media;

        if ($blog->save()) {
            Session::put("added_blog", "success");
        } else {
            Session::put("added_blog", "error");
        }
        return redirect('admin/blogs');
    }

    public function edit($id)
    {
        $blog = Blog::query()->findOrFail($id);
        $gallery = $blog->gallery()->get();
        $gallery_all = Gallery::query()->get();
        $title = "Blog";
        $sub_title = 'Güncelle';
        return view('admin.blogs.edit_blog', compact(['gallery', 'blog', 'title', 'sub_title', 'gallery_all']));
    }

    public function update(Request $request, $id)
    {
        $blog = Blog::query()->findOrFail($id);
        $blog->blog_title = $request->blog_title;
        $blog->blog_text = $request->blog_text;
        $blog->blog_image = $request->blog_media;
        if ($blog->update()) {
            Session::put('blog_edit', 'success');
        } else {
            Session::put('blog_edit', 'error');
        }
        return redirect('admin/blogs');
    }

    public function delete($id)
    {
        $blog = Blog::query()->findOrFail($id);
        if ($blog->delete()) {
            Session::put('blog_delete', 'success');
        } else {
            Session::put('blog_delete', 'error');
        }
        return redirect('admin/blogs');
    }

}
