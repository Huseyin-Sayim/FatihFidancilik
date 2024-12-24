@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>Yazılarımız</h3>
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
                        <span>Yazılarımız</span>
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
                @foreach($blogs as $item)
                    <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                        <div class="single-news-post wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="img-box">
                                <img src="{{ $item->media_url }}" alt="Awesome Image"/>
                                <div class="overlay">
                                    <div class="box">
                                        <div class="content">
                                            <a href="{{ route('front.blogs.details', ['id' => $item->id]) }}" class="thm-btn">Daha Fazla</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <ul class="meta-info list-inline">

                            </ul>
                            <h3><a href="{{ route('front.blogs.details', ['id' => $item->id]) }}">{{ $item->blog_title }}</a></h3>
                            {!! substr($item->blog_text, 0 ,400) !!} ...
                        </div>
                    </div>

                @endforeach
            </div>
        </div>
    </section>

@endsection
