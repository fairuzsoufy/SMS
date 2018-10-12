@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Interviewing {{ $Applicant->name }}</h4>
				<div class="form-group">
				<img alt="image" width="180" height="190" class="rounded" src="{{ asset('storage/') }}{{ '/'.$Applicant->avatar }}">
				</div>
				<form class="forms-sample" action="{{ route('submitInterview') }}" method="POST">
					@csrf
					<input type="hidden" name="applicant_id" value="{{ $Applicant->id }}" />
					@foreach($Questions as $Question)
					<div class="form-group">
						<label>{{ $Question->text }}</label>
						<div class="form-group">
							<div class="form-check form-check-flat">
								<label class="form-check-label">
									<input class="form-check-input" name="score[]" type="checkbox" value="20"> Very weak
									<i class="input-helper"></i></label>
								</div>
								<div class="form-check form-check-flat">
									<label class="form-check-label">
										<input class="form-check-input" name="score[]" type="checkbox" value="40"> Weak
										<i class="input-helper"></i></label>
									</div>
									<div class="form-check form-check-flat">
										<label class="form-check-label">
											<input class="form-check-input" name="score[]" type="checkbox" value="60"> Intermediate
											<i class="input-helper"></i></label>
										</div>
										<div class="form-check form-check-flat">
											<label class="form-check-label">
												<input class="form-check-input" name="score[]" type="checkbox" value="80"> Strong
												<i class="input-helper"></i></label>
											</div>
											<div class="form-check form-check-flat">
												<label class="form-check-label">
													<input class="form-check-input" name="score[]" type="checkbox" value="100"> Very strong
													<i class="input-helper"></i></label>
												</div>
											</div>
										</div>
										@endforeach
										<div class="form-group">
											<label>Feedback</label>
											<textarea class="form-control" name="feedback" rows="2"></textarea>
										</div>
										<button class="btn btn-success mr-2" type="submit">
										<i class="mdi mdi-send"></i>Submit</button>
										<a href="{{ route('viewApplicants') }}" class="btn btn-light">
										Cancel</a>
									</form>
								</div>
							</div>
						</div>
					</div>
					@endsection