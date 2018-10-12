@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Schedule</h4>
				<p class="card-description">
					Add your interview periods and gaps
				</p>
				<form method="POST" action="{{ route('addSchedule') }}">
					@csrf
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend bg-info">
								<span class="input-group-text bg-transparent">
									<i class="mdi mdi-calendar-range text-white"></i>
								</span>
							</div>
							<input class="form-control" aria-describedby="colored-addon1" aria-label="Date" type="date" name="date" placeholder="Date">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend bg-primary border-primary">
								<span class="input-group-text bg-transparent">
									<i class="mdi mdi mdi-clock-start text-white"></i>
								</span>
							</div>
							<input class="form-control" aria-describedby="colored-addon2" aria-label="start_time" type="time" name="start" placeholder="Start Time">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend bg-primary border-primary">
								<span class="input-group-text bg-transparent">
									<i class="mdi mdi mdi-clock-end text-white"></i>
								</span>
							</div>
							<input class="form-control" aria-describedby="colored-addon2" aria-label="end_time" type="time" name="end" placeholder="End Time">
						</div>
					</div>
					<div class="card-footer">
						<div class="form-group">
							<button class="btn btn-primary btn-rounded btn-fw" type="submit">
							<i class="mdi mdi-send"></i>Save</button>
							<button class="btn btn-danger btn-rounded btn-fw" type="button" onclick="this.form.reset()">
							<i class="mdi mdi-block-helper"></i>Reset</button>
						</div>
					</div>
				</form>	
			</div>
		</div>
	</div>
	<div class="col grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Your Interview Schedule</h4>
				<p class="card-description">
					Add interview times above
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
<script src="{{ asset('vendors/fullcalendar/moment.min.js')}}"></script>
<script src="{{ asset('vendors/fullcalendar/fullcalendar.min.js')}}"></script>


<script>

var url = "{{ url('/schedule') }}";

$(document).ready(function(){
     $.ajax({
         url: url+'/get-schedule/',
         type: 'GET',
         dataType: 'json',
         async: false,
         success: function(response){
              json_events = response;

         }
    });
  $('.calendar').fullCalendar({
  	   header:
  	   {
  	   	left: "prev,next today",
  	    center: "title",
  	    right: "month,agendaDay"
  		},
  	   eventLimit: true,	
       events: JSON.parse(JSON.stringify(json_events)),
       Duration: '10 minutes',
       defaultView: 'agendaDay',
  });

});

</script>

@endpush



