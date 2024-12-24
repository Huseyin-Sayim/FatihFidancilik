@extends("layouts.front")

@section("content")
    <section class="rev_slider_wrapper">
        <div class="rev_slider slider1" id="slider1"  data-version="5.0" data-height="720">
            <ul>
                <li data-transition="random">
                    <img src="{{ asset('img/home_image.jpg') }}"  alt="" width="1920" height="720" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" >

                    <div class="tp-caption tp-resizeme banner-caption-box"
                         data-x="left" data-hoffset="0"
                         data-y="top" data-voffset="215"
                         data-transform_idle="o:1;"
                         data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;"
                         data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"
                         data-mask_in="x:[100%];y:0;s:inherit;e:inherit;"
                         data-splitin="none"
                         data-splitout="none"
                         data-start="500">
                        <div class="banner-caption-h2">Fatih Fidancılık</div>
                        <a href="{{ route('about') }}" class="thm-btn">Hakkımızda</a>&emsp;&emsp;<a href="{{ route('contact') }}" class="thm-btn borderd inverse">İletişim</a>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <section class="service-box-one-wrapper sec-pad">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="left-text">
                        <div class="sec-title outer-stroke">
                            <div class="inner">
                                <span class="tag-line">Websitemize Hoş Geldiniz</span>
                                <h2>Fidan Çeşitlerimiz</h2>
                                <span class="decor-line"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row single-service-box-wrapper">
                        @if(empty($services))

                        @else
                            @foreach($services as $item)
                                <div class="col-md-6" style="height: 500px">
                                    <div class="single-service-box-one wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                        <div class="img-box">
                                            <img style="width: 300px;height: 300px; object-fit: cover" src="{{ asset($item->media_url) }}" alt=""/>
                                            <div class="overlay">
                                                <div class="box">
                                                    <div class="content">
                                                        <a href="{{ route('front.services.details', ['id' => $item->id]) }}" class="thm-btn">Daha Fazla</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h3>{{ $item->service_title }} Çeşitleri</h3>
                                        <p>{{ $item->service_intro_text }}</p>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="news-wrapper sec-pad">
        <div class="container">
            <div class="clearfix">
                <div class="pull-left">
                    <div class="sec-title">
                        <div class="inner">
                                <span class="tag-line">Yazılarımız</span>
                            <span class="decor-line"></span>
                        </div>
                    </div>
                </div>
                <div class="pull-right">
                    <a href="{{ route('front.blogs') }}" class="thm-btn">Hepsini Gör</a>
                </div>
            </div>
            <div class="row">
                @if(empty($blogs))

                @else
                    @foreach($blogs as $item)
                        <div class="col-md-4">
                            <div class="single-news-post wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="img-box">
                                    <img style="height: 350px; object-fit: cover" src="{{ $item->media_url }}" alt="Awesome Image"/>
                                    <div class="overlay">
                                        <div class="box">
                                            <div class="content">
                                                <a href="{{ route('front.blogs.details', ['id' => $item->id]) }}" class="thm-btn">Daha Fazla</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <ul class="meta-info list-inline">
                                    <li>

                                    </li>
                                </ul>
                                <h3><a href="{{ route('front.blogs.details', ['id' => $item->id]) }}">{{ $item->blog_title  }}</a></h3>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </section>

    <div class="google-map-wrapper">
        <iframe src=" {{ $address_url[0]->value}} " width="100%" height="700" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
@endsection
