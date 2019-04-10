@extends('layouts.app-guest')

@section('content')

<div class="row">
	<div class="col-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">History</h4>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Day</th>
								<th>Signed in</th>
								<th>Signed out</th>
							</tr>
						</thead>
						<tbody>
							@foreach($History as $record)
							<tr>
								<td>{{ \Carbon\Carbon::parse($record->signed_in)->format('l') }}</td>
								<td>{{ \Carbon\Carbon::parse($record->signed_in)->format('l jS \\of F H:i A') }}</td>
								<td>{!! $record->signed_out == null ? 
									'<label class="badge badge-danger">Pending</label>' 
									: 
									\Carbon\Carbon::parse($record->signed_in)->format('l jS \\of F H:i A') !!}
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