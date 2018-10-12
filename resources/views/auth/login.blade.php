@extends('layouts.app-guest')

@section('content')

<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            @include('includes.partials.alerts')
            <div class="auto-form-wrapper">
                <form method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group">
                        <label class="label">E-mail</label>
                        <div class="input-group">
                            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
                            <div class="input-group-append">
                              <span class="input-group-text">
                                <i class="mdi mdi-check-circle-outline"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                   <label class="label">Password</label>
                   <div class="input-group">
                    <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                    </span>
                </div>
            </div>
        </div>
        <div class="form-group">
          <button class="btn btn-primary submit-btn btn-block">Login</button>
      </div>
      <div class="form-group d-flex justify-content-between">
          <div class="form-check form-check-flat mt-0">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}> Keep me signed in
          </label>
      </div>
  </div>
</form>
</div>
<p class="footer-text text-center">Copyright © 2018 SMS MIU. All rights reserved.</p>
</div>
</div>
</div>

</div>

</div>

@endsection