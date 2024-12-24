@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>Galeri</h3>
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
                        <span>Galeri</span>
                    </li>
                </ul>
            </div>
            <div class="pull-right">

            </div>
        </div>
    </div>

    <section class="latest-project sec-pad ">
        <div class="container">


            <div class="text-center">
                <ul class="post-filter light list-inline">
                    <li class="active" data-filter=".filter-item">
                        <span>All</span>
                    </li>
                </ul>
            </div>

            <div class="row masonary-layout filter-layout">
                @foreach($gallery as $item)
                    <div class="col-md-3 filter-item video">
                        <div class="single-project-item">
                            <div class="img-box">
                                <img src="{{ $item->media_url }}" alt="Awesome Image"/>
                                <div class="overlay">
                                    <div class="box">
                                        <div class="content">
                                            <div class="top">
                                                <ul class="list-inline">
                                                    <li>
                                                        <a data-group="1" href="{{ $item->media_url }}" class="img-popup"><i class="fa fa-search-plus"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="bottom clearfix">
                                                <div class="title">
                                                    <h3>Fatih Fidancılık</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
