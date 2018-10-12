@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12 stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">View Applicants</h4>
				<p class="card-description">
					Select a committee
				</p>
				<form class="forms-sample" action="{{ route('viewCommitteeApplicants') }}" method="POST">
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
                    <a class="btn btn-warning" href="{{ route('viewApplicants') }}">
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
					Recently added applicants
				</p>
				@include('dashboard.applicants.partials.records')
			</div>
		</div>
	</div>
</div>

@endsection

@push('pagescript')

<script>
	$(document).ready( function () {
		$('.table').DataTable();
	} );
</script>

@endpush
