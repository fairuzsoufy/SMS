@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Application Info</h4>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group row">
							<div class="col-sm-9">
								<img alt="image" width="300" height="280" class="rounded" src="{{ asset('storage/') }}{{ '/'.$Applicant->avatar }}">
							</div>
						</div>
					</div>
				</div>
				<p class="card-description">
					Personal info
				</p>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Name</label>
							<div class="col-sm-9">
								<input class="form-control" type="text"  value="{{ $Applicant['name'] }}" disabled="">
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
									<input class="form-control" type="text"  value="{{ $Applicant['phone'] }}" disabled="">
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">E-mail</label>
							<div class="col-sm-9">
								<input class="form-control" type="text"  value="{{ $Applicant['email'] }}" disabled="">
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
								<input class="form-control" type="text"  value="{{ $Applicant->Faculty->name }}" disabled="">
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
									<input class="form-control" type="text"  value="{{ $Applicant['student_id'] }}" disabled="">
								</div>
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
								<input class="form-control" type="text"  value="{{ $Applicant->Committee->name }}" disabled="">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Date</label>
							<div class="col-sm-9">
								<input class="form-control" type="text"  
								value="{{ (\Carbon\Carbon::parse($Applicant->InterviewDetail->InterviewTime->date))->format('l jS \\of F') }}" disabled="">

							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Interviewer</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" value="{{ $Applicant->InterviewDetail->InterviewTime->User->name }}"  disabled="">
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Time</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  
								value="{{ (\Carbon\Carbon::parse($Applicant->InterviewDetail->InterviewTime->start_time))->format('h:i A') }}" disabled="">
							</div>
						</div>
					</div>
				</div>
				<p class="card-description">
					Scoring
				</p>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Score</label>
							<div class="col-sm-3">
								<div class="progress">
									<div class="progress-bar bg-primary" role="progressbar" aria-valuenow="{{ $Applicant->ApplicantStatus->score }}" aria-valuemin="0" aria-valuemax="100" style="width: {{ $Applicant->ApplicantStatus->score }}%">{{ $Applicant->ApplicantStatus->score }}</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Feedback</label>
							<div class="col-sm-3">
								<div class="mt-2">
									<p>{{ $Applicant->ApplicantStatus->feedback }}</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-sm-3 col-form-label">Verdict</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" value="{{ $statusMap[$Applicant->ApplicantStatus->status] }}"  disabled="">
							</div>
						</div>
					</div>
				</div>
				<div class="card-footer">
					<div class="form-group">
						<form action="{{ route('interviewApplicant', ['id'=>$Applicant->id]) }}" method="GET">
							<button class="btn btn-outline-success btn-fw btn" type="submit">
								<i class="mdi mdi-send"></i>Start Interview</button>
						</form>

						<form action="{{ route('editApplicant', ['id' => $Applicant->id]) }}" method="GET">
							<button class="btn btn-outline-info" type="submit">
								<i class="mdi mdi-pencil"></i>Edit Application</button>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	@endsection
