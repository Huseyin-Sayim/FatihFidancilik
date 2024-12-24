<footer class="footer has-black-color-overlay has-dark-texture">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="footer-widget about-widget">
                    <img src="{{asset('img/fatih_fidancilik_logo.png')}}" style="width: 250px; height: 100px; object-fit: cover; transform: scale(1)"/>
                    <p>
                        1992'den beri Akhisar'da fidan üretimi ve satışıyla hizmetinizdeyiz. Modern bahçeler için kaliteli ve çeşitlilik sunan fidanlarımızla doğaya değer katıyoruz.
                    </p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="footer-widget link-widget">
                    <div class="sec-title-two">
                        <h3><span class="white-color-text">Web Site İçeriğimiz</span></h3>
                        <span class="decor-line"></span>
                    </div>
                    <ul class="links">
                        <li><a href="{{ route('home') }}">Anasayfa</a></li>
                        <li><a href="{{ route('about') }}">Hakkımızda</a></li>
                        <li><a href="{{ route('front.services') }}">Fidan Çeşitlerimiz</a></li>
                        <li><a href="{{ route('front.gallery') }}">Galeri</a></li>
                        <li><a href="{{ route('front.blogs') }}">Yazılarımız</a></li>
                        <li><a href="{{ route('contact') }}">İletişim</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3">
                <div class="footer-widget contact-widget">
                    <div class="sec-title-two">
                        <h3><span class="white-color-text">İletişim Bilgileri</span></h3>
                        <span class="decor-line"></span>
                    </div><!-- /.sec-title-two -->
                    <div class="footer-contact-info-carousel owl-theme owl-carousel">
                        <div class="item">
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
                                <li>
                                    <div class="icon-box">
                                        <i class="lsp-icon-clock"></i>
                                    </div>
                                    <div class="text-box">
                                        <p>Tüm Hafta - Sat 9.00 - 20.00</p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="item">
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
                                <li>
                                    <div class="icon-box">
                                        <i class="lsp-icon-clock"></i>
                                    </div>
                                    <div class="text-box">
                                        <p>Tüm Hafta - Sat 9.00 - 20.00</p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="item">
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
                                <li>
                                    <div class="icon-box">
                                        <i class="lsp-icon-clock"></i>
                                    </div>
                                    <div class="text-box">
                                        <p>Tüm Hafta - Sat 9.00 - 20.00</p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</footer>


<section class="footer-bottom">
    <div class="container">
        <div class="pull-left copy-text">
            <p>©Copyright {{ date('Y') }} Created By  <a href="https://metgesoft.com/">Metgesoft</a></p>
        </div>
    </div>
</section>


<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>



<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
<script src="{{ asset('assets/jquery-1.12.4.min.js') }}"></script>
<script src="{{ asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
<!-- revolution slider js -->
<script src="{{ asset('assets/revolution/js/jquery.themepunch.tools.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/jquery.themepunch.revolution.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.actions.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.carousel.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.kenburn.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.layeranimation.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.migration.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.navigation.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.parallax.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.slideanims.min.js') }} "></script>
<script src="{{ asset('assets/revolution/js/extensions/revolution.extension.video.min.js') }} "></script>



<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="{{ asset('assets/gmaps.js') }} "></script>
<!-- google map helper -->
<script src="{{ asset('assets/map-helper.js') }}"></script>



<script src="{{ asset('assets/jquery-validation/dist/jquery.validate.min.js') }} "></script>

<script src="{{ asset('assets/owl.carousel-2/owl.carousel.min.js') }}"></script>

<script src="{{ asset('assets/nouislider/nouislider.js') }}"></script>
<script src="{{ asset('assets/bootstrap-touch-spin/jquery.bootstrap-touchspin.js') }}"></script>

<script src="{{ asset('assets/isotope.js') }}"></script>

<script src="{{ asset('assets/masterslider/masterslider.min.js') }}"></script>

<script src="{{ asset('assets/bxslider/dist/jquery.bxslider.min.js') }}"></script>

<script src="{{ asset('assets/chartjs/dist/Chart.min.js') }}"></script>

<script src="{{ asset('assets/jquery-circle-progress-1.1.2/dist/circle-progress.js') }}"></script>
<script src="{{ asset('assets/morris.js-master/morris.min.js') }}"></script>
<script src="{{ asset('assets/raphael-master/raphael.min.js') }}"></script>

<script src="{{ asset('assets/Magnific-Popup-master/dist/jquery.magnific-popup.min.js') }}"></script>

<script src="{{ asset('assets/waypoints.min.js') }}"></script>
<script src="{{ asset('assets/jquery.counterup.min.js') }}"></script>

<script src="{{ asset('assets/wow.min.js') }}"></script>


<script src="{{ asset('assets/jquery.backstretch.min.js') }}"></script>


<script src="{{ asset('assets/Polyglot-Language-Switcher-master/js/jquery.polyglot.language.switcher.js') }}"></script>

<script src="{{ asset('js/custom.js') }}"></script>


</body>
</html>
