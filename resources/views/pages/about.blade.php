@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>Fatih Fidancılık</h3>
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
                        <span>Hakkımızda</span>
                    </li>
                </ul>
            </div>
            <div class="pull-right">

            </div>
        </div>
    </div>


    <section class="service-box-one-wrapper sec-pad">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="left-text">
                        <div class="sec-title outer-stroke">
                            <div class="inner">
                                <span class="tag-line">WebSitemize Hoşgeldiniz</span>
                                <h2>Hakkımızda</h2>
                                <span class="decor-line"></span>
                            </div>
                        </div>
                        <div class="text-box">
                            <p>
                                {{ $about_text[0]->value }}
                            </p>

                            <a href="{{ route('front.services') }}" class="thm-btn">Fidan Çeşitlerimiz</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                    <img style="width: 570px; height: 410px; object-fit: cover" src="{{ asset('img/home_image.jpg') }}" alt="Awesome Image"/>
                </div>
            </div>
        </div>
    </section>

@endsection
