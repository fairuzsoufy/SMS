@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12 stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Filter Applicants</h4>
				<p class="card-description">
					Select a committee
				</p>
				<form class="forms-sample" action="{{ route('filterApplicants') }}" method="POST">
					@csrf
					<div class="form-group row">
						<label class="col-sm-3 col-form-label">Committee</label>
						<div class="col-sm-4">
							<select name="committee_id" id="committee_id" class="form-control" required>
								<option selected="">Choose</option>
								@foreach(App\Committee::all() as $committee)
								<option value="{{ $committee->id }}">{{ $committee->name }}</option>
								@endforeach
							</select>	
						</div>
					</div>
					<div class="form-group">
					<button class="btn btn-success btn-fw btn-rounded" type="submit">
                    <i class="mdi mdi-send"></i>Save</button>
                    <a class="btn btn-warning" href="{{ route('filtration') }}">
					<i class="mdi mdi-block-helper"></i>Clear</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">{{ $request->committee_id ? App\Committee::find($request->committee_id)->name : 'All'}} Applicants</h4>
				<p class="card-description">
					Accept or Reject applicants below
				</p>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>
									Name
								</th>
								<th>
									Committee
								</th>
								<th>
									Phone
								</th>
								<th>
									Interviewed
								</th>
								<th>
									Score
								</th>
								<th>
									Actions
								</th>
							</tr>
						</thead>
						<tbody>
							@foreach($Applications as $application)
							<tr>
								<td>
									{{ $application->Applicant->name }}
								</td>
								<td>
									{{ $application->Applicant->Committee->name }}
								</td>
								<td>
									{{ $application->Applicant->phone }}
								</td>
								<td style="text-align: center;">
									@if($application->score == 0)
									<button class="btn btn-icons btn-rounded btn-outline-danger" type="button">
                          			<i class="mdi mdi-close"></i>
                        			</button>
									@else
									<button class="btn btn-icons btn-rounded btn-outline-success" type="button">
                          			<i class="mdi mdi-check"></i>
                        			</button>
									@endif
								</td>
								<td>
									<div class="progress">
										<div class="progress-bar bg-primary" role="progressbar" aria-valuenow="{{ $application->score }}" aria-valuemin="0" aria-valuemax="100" style="width: {{ $application->score }}%"></div>
									</div>
								</td>
								<td>
									<div class="table-data-feature">
										<div class="form-group">
										<button class="btn btn-icons btn-rounded btn-success btn-handle" data-action="accept" data-applicant="{{ $application->Applicant->id }}" type="button">
											<i class="mdi mdi-check"></i>
										</button>
										<button class="btn btn-icons btn-rounded btn-danger btn-handle" data-action="reject" data-applicant="{{ $application->Applicant->id }}" type="button">
											<i class="mdi mdi-close"></i>
										</button>
										</div>
									</div>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>


@endsection


@push('meta')
<meta name="csrf-token" content="{{csrf_token()}}">
@endpush

@push('pagescript')
<script type="text/javascript">var url = "{{ url('/filtration') }}";</script>
<script type="text/javascript" src="{{ asset('js/filtration.js') }}"></script>
<script>
	$(document).ready( function () {
		$('.table').DataTable();
	} );
</script>
@endpush



