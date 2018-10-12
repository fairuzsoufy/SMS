@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Edit Applicant Info</h4>
				<form class="form-sample" method="POST" action="{{ route('submitApplicant') }}" enctype="multipart/form-data">
					@csrf
					<p class="card-description">
						Personal info
					</p>
					<?php $name = explode(' ', $Applicant['name']) ?>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Picture</label>
								<div class="col-sm-9">
									<input name="avatar" class="form-control-file" id="file-input" type="file">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">First name</label>
								<div class="col-sm-9">
									<input class="form-control disabled" type="text" name="first_name" placeholder="First name" value="{{ $name[0] }}">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Last Name</label>
								<div class="col-sm-9">
									<input class="form-control" type="text" name="last_name" placeholder="Last name" value="{{ $name[1] }}" required>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Student ID</label>
								<div class="col-sm-9">
									<div class="input-group">
										<div class="input-group-prepend bg-primary border-primary">
											<span class="input-group-text bg-transparent text-white">20</span>
										</div>
										<input class="form-control" type="text" name="student_id" placeholder="2018/12345 would be 1812345" value="{{ $Applicant['student_id'] }}" required>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Phone</label>
								<div class="col-sm-9">
									<div class="input-group">
										<div class="input-group-prepend bg-primary border-primary">
											<span class="input-group-text bg-transparent text-white">+20</span>
										</div>
										<input class="form-control" type="text" name="phone" placeholder="1xxxxxxxxx" value="{{ $Applicant['phone'] }}" required>
									</div>
								</div>
							</div>
						</div>
					</div>
					<p class="card-description">
						Faculty info
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Faculty</label>
								<div class="col-sm-9">
									<select name="faculty_id" class="form-control" required>
										<option value="{{ $Applicant['faculty_id'] }}">{{ $Applicant->Faculty->name }}</option>
										@foreach(App\Faculty::all() as $faculty)
										<option value="{{ $faculty->id }}">{{ $faculty->name }}</option>
										@endforeach
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">E-mail</label>
								<div class="col-sm-9">

									<input class="form-control" type="text" name="email" placeholder="Example1812345" value="{{ $Applicant['email'] }}" required>

								</div>
							</div>
						</div>
					</div>
					<p class="card-description">
						Interview info
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Committee</label>
								<div class="col-sm-9">
									<select name="committee_id" id="committee_id" class="form-control" required>
										<option value="{{ $Applicant['committee_id'] }}">{{ $Applicant->Committee->name }}</option>
										@foreach(App\Committee::all() as $committee)
										<option value="{{ $committee->id }}">{{ $committee->name }}</option>
										@endforeach
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Time</label>
								<div class="col-sm-3">
									<input class="form-control" type="text" value="No time chosen" id="timeDisplay" disabled="" />
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="time" id="time" value="" />
					<div class="card-footer">
						<div class="form-group">
							<button class="btn btn-outline-success btn-fw btn-rounded" type="submit">
								<i class="mdi mdi-send"></i>Submit</button>
								<button class="btn btn-danger btn-fw btn-rounded" onclick="this.form.reset()" type="button">
									<i class="mdi mdi-block-helper"></i>Reset</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Schedule</h4>
						<p class="card-description">
						Choose a committee to show information
						</p>
						<div class="calendar"></div>
					</div>
				</div>
			</div>
		</div>

		@endsection

		@push('styles')
		<link rel="stylesheet" href="{{ asset('vendors/fullcalendar/fullcalendar.min.css') }}" />
		@endpush

		@push('pagescript')
		<script>
			var url = "{{ url('/recruitment/add') }}";
			var urlSchedule = "{{ url('/schedule') }}";
		</script>
		<script src="{{ asset('vendors/fullcalendar/moment.min.js')}}"></script>
		<script src="{{ asset('vendors/fullcalendar/fullcalendar.min.js')}}"></script>
		<script src="{{ asset('js/recruitment.js') }}" type="text/javascript"></script>
		@endpush