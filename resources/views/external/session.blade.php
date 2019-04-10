@extends('layouts.app-guest')

@section('content')

<div class="container-scroller">
	<div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
		<div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
			<div class="row w-100">
				<div class="col-lg-4 mx-auto">
					@include('includes.partials.alerts')
					<div class="card">
						<div class="card-body">
							<h2 class="card-title text-primary mb-5">Your current session</h2>
							<div class="wrapper d-flex justify-content-between">
								<div class="side-left">
									<p class="mb-2">Signed in</p>
									<p class="display-3 mb-4 font-weight-light">{{ $signin_time->format('l jS \\of F H:i:s A') }}</p>
								</div>
							</div>

							<div class="wrapper d-flex justify-content-between">
								<div class="side-left">
									<p class="mb-2">Student name</p>
									<p class="display-3 mb-4 font-weight-light">{{ $Attendance->first()->Applicant->name }}</p>
								</div>
							</div>
							<div class="wrapper d-flex justify-content-between">
								<div class="side-left">
									<p class="mb-2">Student ID</p>
									<p class="display-3 mb-5 font-weight-light">{{ $Attendance->first()->Applicant->student_id }}</p>
								</div>
							</div>
							<div class="wrapper">
								<div class="d-flex justify-content-between">
									<p class="mb-2">Session is over in </p>
									<p class="mb-2 text-primary">{{ $session_duration." now" }}</p>
								</div>
							</div>
							<div class="wrapper mt-4">
								<div class="d-flex justify-content-between">
									<p class="mb-2">You signed in </p>
									<p class="mb-2 text-success">{{ $signin_duration." now" }}</p>
								</div>
							</div>
						</div>
						<form method="POST" action="{{ route('endSession') }}">
							@csrf
							<div class="form-group">
								<input type="hidden" name="student_id" value="{{ $Attendance->first()->applicant_id }}"/>
								<button class="btn btn-primary submit-btn btn-block" type="submit">End Session</button> 
							</div>
						</form>
					</div>
				</div>

			</div>

		</div>

	</div>

</div>

@endsection