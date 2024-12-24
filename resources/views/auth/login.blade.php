@extends('layouts.app')

@section('content')
{{--    @include("admin.layout.header")--}}
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <!-- Login form -->
                <form class="login-form w-auto mx-auto" method="POST" action="{{ route("login") }}">
                    @csrf
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="text-center mb-3">
                                <div class="d-inline-flex align-items-center justify-content-center mb-4 mt-2">
                                    <h1 class="fst-italic">Fatih Fidancılık</h1>
                                </div>
                                <h5 class="mb-0">Hesabınıza Giriş Yapın</h5>
                                <span class="d-block text-muted">Giriş Bilgilerinizi Aşşağıya Giriniz</span>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">E-Mail</label>
                                <div class="form-control-feedback form-control-feedback-start">
                                    <input type="email" name="email" class="form-control" placeholder="john@doe.com">
                                    <div class="form-control-feedback-icon">
                                        <i class="ph-user-circle text-muted"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Şifre</label>
                                <div class="form-control-feedback form-control-feedback-start">
                                    <input type="password" name="password" class="form-control" placeholder="•••••••••••">
                                    <div class="form-control-feedback-icon">
                                        <i class="ph-lock text-muted"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary w-100">Giriş Yap</button>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- /login form -->
            </div>
        </div>
    </div>
@endsection
