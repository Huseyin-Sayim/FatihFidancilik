<header class="header site-header">
    <div class="header-top">
        <div class="container">
            <div class="pull-left left-info contact-info">
                <ul class="list-inline contact-info-list">
                    <li>
                        <div class="inner-box">
                            <span>Akhisar Fatih Fidancılık</span>
                        </div>
                    </li>
                </ul>
            </div><!-- /.pull-left left-info -->
            <div class="pull-right contact-info right-info">
                <ul class="list-inline contact-info-list">
                    <li>
                        <div class="inner-box">
                            <i class="fa fa-home"></i><span>{{ $address[0]->value }}</span>
                        </div><!-- /.inner-box -->
                    </li><!-- adding comment for inline hack
					--><li>
                        <div class="inner-box">
                            @foreach($phone as $item)
                                <i class="fa fa-phone"></i><span>{{ $item->value }}</span> &nbsp
                            @endforeach
                        </div><!-- /.inner-box -->
                    </li><!-- adding comment for inline hack
					--><li>
                        <div class="inner-box">
                            <i class="fa fa-clock-o"></i><span> Tüm Hafta: 09:00 - 20:00</span>
                        </div><!-- /.inner-box -->
                    </li>
                </ul>
            </div><!-- /.pull-right -->
        </div><!-- /.container -->
    </div><!-- /.header-top -->
    <nav class="navbar navbar-default header-navigation stricky">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ route('home') }}">
                    <img src="{{asset('img/fatih_fidancilik_logo.png')}}" style="width: 100px; height: 100px; transform: scale(2)"/>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main-nav-bar">


                <ul class="nav navbar-nav navigation-box">
                    <li class="{{ $title == 'home' ? 'current' : '' }}">
                        <a href="{{ route('home') }}">Anasayfa</a>
                    </li>
                    <li class="{{ $title == 'about' ? 'current' : '' }}">
                        <a href="{{ route('about') }}">Hakkımızda</a>
                    </li>
                    <li class="{{ $title == 'service' ? 'current' : '' }}">
                        <a href="{{ route('front.services') }}">Fidan Çeşitlerimiz</a>
                        <ul class="sub-menu">
                            @foreach($all_services as $item)
                                <li><a href="{{ route('front.services.details', ['slug' => $item->slug .'-'. $item->id]) }}">{{ $item->service_title }}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="{{ $title == 'gallery' ? 'current' : '' }}">
                        <a href="{{ route('front.gallery') }}">Galeri</a>
                    </li>
                    <li class="{{ $title == 'blog' ? 'current' : '' }}">
                        <a href="{{ route('front.blogs') }}">Yazılarımız</a>
                    </li>
                    <li class="{{ $title == 'contact' ? 'current' : '' }}">
                        <a href="{{ route('contact') }}">İletişim</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right right-box">
                    <li>
                        <a href="https://www.instagram.com/fidancizadeoliveoil/"><span class="phone-only">İnstagram</span><i class="fa fa-instagram"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
