			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>
							</th>
							<th>
								Name
							</th>
							<th>
								Status
							</th>
							<th>
								Committee
							</th>
							<th>
								Interview Time
							</th>
							<th>
								Phone
							</th>
							<th>
								Faculty ID
							</th>
							<th>
								Actions
							</th>
						</tr>
					</thead>
					<tbody>
						@foreach($Applicants as $applicant)
						<tr>
							<td class="py-1">
								<img alt="image" src="{{ asset('storage/') }}{{ '/'.$applicant->avatar }}">
							</td>
							<td>
								{{ $applicant->name }}
							</td>
							<td>
								@if($applicant->ApplicantStatus == "" || $applicant->ApplicantStatus->status == 0)
								<div class="progress">
									<div class="progress-bar bg-warning" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
								</div>
								@else
								<div class="progress">
									<div class="progress-bar {{ $applicant->ApplicantStatus->status == App\ApplicationStatus::ACCEPTED ? 'bg-success' : 'bg-danger' }}" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
								</div>
								@endif
							</td>
							<td>
								{{ $applicant->Committee->name }}
							</td>
							<td>
								{{ (\Carbon\Carbon::parse($applicant->InterviewDetail->InterviewTime->date))->format('l jS \\of F') }}
								{{ __(' at ') }}
								{{ (\Carbon\Carbon::parse($applicant->InterviewDetail->InterviewTime->start_time))->format('h:i A') }}
							</td>
							<td>
								{{ $applicant->phone }}
							</td>
							<td>
								{{ $applicant->student_id }}
							</td>
							<td>
								<div class="table-data-feature">
								<form action="{{ route('editApplicant', ['id' => $applicant->id]) }}" method="GET">
									<button class="btn btn-icons btn-rounded btn-warning" type="submit">
										<i class="mdi mdi-pencil"></i>
									</button>
								</form>
								<form action="{{ route('viewSingleApplicant', ['id' => $applicant->id]) }}" method="GET">
									<button class="btn btn-icons btn-rounded btn-primary" type="submit">
                          			<i class="mdi mdi-eye"></i>
                        			</button>
                        		</form>
                        		<form action="{{ route('interviewApplicant', ['id'=>$applicant->id]) }}" method="GET">
									<button class="btn btn-icons btn-rounded btn-success" type="submit">
                          			<i class="mdi mdi-send"></i>
                        			</button>
                        		</form>
                        		</div>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
