@extends('layouts.app')

@section('content')

@if(Auth::user()->UserCommittee == '')
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
							<h3 class="font-weight-medium text-right mb-0">{{ App\Applicant::count() }}</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
		<div class="card card-statistics">
			<div class="card-body">
				<div class="clearfix">
					<div class="float-left">
						<i class="mdi mdi-receipt text-warning icon-lg"></i>
					</div>
					<div class="float-right">
						<p class="mb-0 text-right">Total number of members</p>
						<div class="fluid-container">
							<h3 class="font-weight-medium text-right mb-0">{{ App\UserCommittee::count() }}</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
		<div class="card card-statistics">
			<div class="card-body">
				<div class="clearfix">
					<div class="float-left">
						<i class="mdi mdi-poll-box text-success icon-lg"></i>
					</div>
					<div class="float-right">
						<p class="mb-0 text-right">Interview slots available</p>
						<div class="fluid-container">
							<h3 class="font-weight-medium text-right mb-0">{{ App\InterviewTime::count() }}</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
		<div class="card card-statistics">
			<div class="card-body">
				<div class="clearfix">
					<div class="float-left">
						<i class="mdi mdi-account-location text-info icon-lg"></i>
					</div>
					<div class="float-right">
						<p class="mb-0 text-right">Total number of interviewed applicants</p>
						<div class="fluid-container">
							<h3 class="font-weight-medium text-right mb-0">{{ App\ApplicantStatus::where('score', '>', '0')->count() }}</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Applicants</h4>
				<p class="card-description">
					Recently added applicants
				</p>
				@include('dashboard.applicants.partials.records')
			</div>
		</div>
	</div>
</div>


@endsection
