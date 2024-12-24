@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>{{ $service->service_title }} Çeşitleri</h3>
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
                        <a href="#">Fidan Çeşitleri</a>
                    </li>
                    <li>
                        <span>{{ $service->service_title }} Çeşitleri </span>
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
                            {!! $service->service_description !!}
                        </div>

                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.news-wrapper -->

@endsection

