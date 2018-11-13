@extends('layouts.app-guest')

@section('content')

<div class="container-scroller">
  <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
    <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
      <div class="row w-100">
        <div class="col-lg-4 mx-auto">
          @include('includes.partials.alerts')
          <div class="auto-form-wrapper">
            @if(Route::currentRouteNamed('checkStatus'))
              <div class="card">
                <div class="card-body">
                  <h2 class="card-title mb-5">Status</h2>
                  <div class="wrapper d-flex justify-content-between">
                    <div class="side-left">
                      <p class="mb-2">Applicant name</p>
                      <p class="display-3 mb-4 font-weight-light">{{ $Applicant[0]['name']}}</p>
                    </div>
                  </div>
                  <div class="wrapper d-flex justify-content-between">
                    <div class="side-left">
                      <p class="mb-2">Student ID</p>
                      <p class="display-3 mb-5 font-weight-light">{{ $Applicant[0]['student_id']}}</p>
                    </div>
                  </div>
                  <div class="wrapper">
                    <div class="d-flex justify-content-between">
                      <p class="mb-2">Status</p>
                      <p class="mb-2 text-{{ $classMap[$Applicant[0]->ApplicantStatus['status']] }}">{{ $statusMap[$Applicant[0]->ApplicantStatus['status']] }}</p>
                    </div>
                    <div class="progress">
                      <div class="progress-bar bg-{{ $classMap[$Applicant[0]->ApplicantStatus['status']] }}" role="progressbar" 
                        aria-valuenow="{{ $Applicant[0]->ApplicantStatus['status'] * 100 }}" aria-valuemin="0" aria-valuemax="100" style="width: {{ $Applicant[0]->ApplicantStatus['status'] * 100 }}%"></div>
                    </div>
                  </div>
                  <div class="wrapper d-flex justify-content-between mt-5">
                    <div class="side-left">
                      <p class="mb-2">Message</p>
                      <p class="mb-2 font-weight-light">{{ $messageMap[$Applicant[0]->ApplicantStatus['status']] }}</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-primary submit-btn btn-block" href="{{ route('checkApplication') }}">Check another application</a>
              </div>
            @else
            <form method="POST" action="{{ route('checkStatus') }}">
              @csrf
              <div class="form-group">
                <label class="label">Student ID</label>
                <div class="input-group">
                  <input id="" type="number" class="form-control" name="student_id" value="{{ old('student_id') }}" placeholder="2018/12345 would be 1812345" required autofocus>
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="mdi mdi-check-circle-outline"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <button class="btn btn-primary submit-btn btn-block" type="submit">Check</button> 
              </div>
            </form>
            @endif
          </div>
          <p class="footer-text text-center">Copyright © 2018 SMS MIU. All rights reserved.</p>
        </div>
      </div>
    </div>

  </div>

</div>

@endsection