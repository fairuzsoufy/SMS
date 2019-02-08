@extends('layouts.app')

@section('content')



@if(App\Guest::count() > 150)
<div class="row purchace-popup">
	<div class="col-12">
		<span class="d-block d-md-flex align-items-center">
			<p>You haven't been assigned a committee. Contact your head to activate your account.</p>
		</span>
	</div>
</div>
@endif

<div class="row">
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
		<div class="card card-statistics">
			<div class="card-body">
				<div class="clearfix">
					<div class="float-left">
						<i class="mdi mdi-cube text-danger icon-lg"></i>
					</div>
					<div class="float-right">
						<p class="mb-0 text-right">Total number of applicants</p>
						<div class="fluid-container">
							<h3 class="font-weight-medium text-right mb-0 {{ App\Guest::count() > 150 ? 'text-danger' : '' }}"><span class="fa fa-warning"></span>{{ App\Guest::count() }}</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Mini-Event Registration</h4>
				<form class="form-sample" method="POST" action="{{ route('submitGuest') }}" enctype="multipart/form-data">
					@csrf
					<p class="card-description">
						Personal info
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">First Name</label>
								<div class="col-sm-9">
									<input class="form-control" type="text" name="first_name" placeholder="First name" id="first_name" value = "{{ old('first_name') }}" required>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Last Name</label>
								<div class="col-sm-9">
									<input class="form-control" type="text" name="last_name" placeholder="Last name" value = "{{ old('last_name') }}" required>
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
										<input class="form-control" type="number" name="student_id" id="student_id" value = "{{ old('student_id') }}" placeholder="2018/12345 would be 1812345" required>
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
										<input class="form-control" type="number" name="phone" placeholder="1xxxxxxxxx" value = "{{ old('phone') }}" required>
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
										<option selected="">Choose</option>
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
									<div class="input-group">
										<input class="form-control" type="text" name="email" placeholder="Example1812345" id="email" value = "{{ old('email') }}" readonly required>
										<div class="input-group-append bg-primary border-primary">
											<span class="input-group-text bg-transparent text-white">@miuegypt.edu.eg</span>
										</div>
									</div>
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
		</div>

		@endsection

		@push('pagescript')
		<script>
			var url = "{{ url('/recruitment/add') }}";
			var urlSchedule = "{{ url('/schedule') }}";
		</script>
		<script src="{{ asset('js/recruitment.js') }}" type="text/javascript"></script>
		@endpush