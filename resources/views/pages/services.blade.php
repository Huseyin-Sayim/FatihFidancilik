@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>Fidan Çeşitlerimiz</h3>
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
                        <span>Fidan Çeşitlerimiz</span>
                    </li>
                </ul>
            </div>
            <div class="pull-right">

            </div>
        </div>
    </div>

    <section class="service-box-one-wrapper service-page sec-pad">
        <div class="container">
            <div class="single-service-box-wrapper" style="display: grid; grid-template-columns: auto auto auto; gap: 10px">

                    @foreach($services as $item)
                        <div class="">
                            <div class="single-service-box-one">
                                <div class="img-box">
                                    <img style="width: 350px; height: 250px; object-fit: cover" src="{{ $item->media_url }}" alt="Awesome Image"/>
                                    <div class="overlay">
                                        <div class="box">
                                            <div class="content">
                                                <a href="{{ route('front.services.details', ['slug' => $item->slug .'-'. $item->id]) }}" class="thm-btn">Daha Fazla</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h3>{{ $item->service_title }}</h3>
                                <p> {{ $item->service_intro_text }} </p>
                            </div>
                        </div>
                    @endforeach

            </div>
        </div>
    </section>

@endsection

