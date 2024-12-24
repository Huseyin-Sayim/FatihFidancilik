@extends("layouts.front")

@section("content")
    <div class="inner-banner has-base-color-overlay text-center">
        <div class="container">
            <div class="box">
                <h3>İletişim</h3>
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
                        <span>İletişim</span>
                    </li>
                </ul>
            </div>
            <div class="pull-right">

            </div>
        </div>
    </div>

    <section class="contact-section sec-pad contact-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-widget contact-widget ">
                        <div class="sec-title semi medium">
                            <h2><span class="black-color-text">İletişim </span> <span class="base-color-text">Bilgileri</span></h2>
                        </div>
                        <ul class="contact-infos">
                            <li>
                                <div class="icon-box">
                                    <i class="lsp-icon-signs"></i>
                                </div>
                                <div class="text-box">
                                    <p>{{ $address[0]->value }}</p>
                                </div>
                            </li>
                            @foreach($phone as $item)
                                <li>
                                    <div class="icon-box">
                                        <i class="lsp-icon-technology"></i>
                                    </div>
                                    <div class="text-box">
                                        <p>{{ $item->value }}</p>
                                    </div>
                                </li>
                            @endforeach

                        </ul>
                    </div>
                    <div class="footer-widget working-hrs-widget ">
                        <div class="sec-title semi medium">
                            <h2><span class="black-color-text">Çalışma</span> <span class="base-color-text">Saatleri</span></h2>
                        </div>
                        <ul class="working-hrs">
                            <li>
                                Pazartesi <span>09:00am - 08:00pm</span>
                            </li>
                            <li>
                                Salı <span>09:00am - 08:00pm</span>
                            </li>
                            <li>
                                Çarşamba <span>09:00am - 08:00pm</span>
                            </li>
                            <li>
                                Perşembe <span>09:00am - 08:00pm</span>
                            </li>
                            <li>
                                Cuma <span>09:00am - 08:00pm</span>
                            </li>
                            <li>
                                Cumartesi <span>09:00am - 08:00pm</span>
                            </li>
                            <li>
                                Pazar <span>09:00am - 08:00pm</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="google-map-wrapper">
        <iframe src=" {{ $maps[0]->value}} " width="100%" height="700" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

@endsection
