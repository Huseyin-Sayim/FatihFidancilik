@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>{{ $blog->blog_title }}</h3>
            </div>
        </div>
    </div>

    <div class="breadcumb-wrapper">
        <div class="container">
            <div class="pull-left">
                <ul class="list-inline link-list">
                    <li>
                        <a href="#">Anasayfa</a>
                    </li>
                    <li>
                        <a href="#">Yazılarımız</a>
                    </li>
                    <li>
                        <span>{{ $blog->blog_title }}  </span>
                    </li>
                </ul>
            </div>
            <div class="pull-right">

            </div>
        </div>
    </div>

    <section class="page sidebar-page sec-pad news-wrapper news-grid-sidebar-page">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12 col-xs-12 pull-left">

                    <div class="single-news-post wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <div class="img-box" style="display: flex; align-items: center; justify-content: center; margin-bottom: 30px">
                            <img class="mt-3" src="{{ asset($image[0]->media_url) }}" alt="Awesome Image"/>
                        </div>
                        <div class="row">
                            <h2 style="color: black; font-weight: bold;"> {{ $blog->blog_title }} </h2>
                            {!! $blog->blog_text !!}
                        </div>

                    </div>
                </div>
            </div>
    </section>

@endsection
