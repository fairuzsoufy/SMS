@extends('layouts.app-guest')

@section('content')

<div class="container-scroller">
	<div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
		<div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
			<div class="row w-100">
				<div class="col-lg-4 mx-auto">
					@include('includes.partials.alerts')
					@if($sessionExists == true)
					<div class="form-group">
						<div class="alert alert-dark alert-dismissible fade show">
							<span class="mdi mdi-alert"></span>
							<strong>{{ __('A session may already exist on this device. Please review it ') }} 
								<a href="{{ route('currentSession') }}">{{ __('here') }}</a></strong>
							<button class="close" aria-label="Close" type="button" data-dismiss="alert">
								<span aria-hidden="true">×</span>
							</button>
						</div>
					</div>	
					@endif				
					<div class="auto-form-wrapper">
						<form method="POST" action="{{ route('submitAttendance') }}">
							@csrf
							<div class="form-group">
								<label class="label">University E-mail</label>
								<div class="input-group">
									<input type="email" class="form-control" name="email" value="{{ old('email') }}" 
									placeholder="example1812345@miuegypt.edu.eg" required autofocus>
									<div class="input-group-append">
										<span class="input-group-text">
											<i class="mdi mdi-check-circle-outline"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="label">PIN</label>
								<div class="input-group">
									<input type="number" class="form-control" name="pin" value="{{ old('pin') }}" placeholder="XXXX" required autofocus>
									<div class="input-group-append">
										<span class="input-group-text">
											<i class="mdi mdi-check-circle-outline"></i>
										</span>
									</div>
								</div>
							</div>								
							<div class="form-group">
								<button class="btn btn-primary submit-btn btn-block" type="submit">OK</button> 
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection