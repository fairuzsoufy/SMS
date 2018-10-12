@if(count($errors) > 0)

@foreach($errors->all() as $error)
<div class="form-group">
	<div class="alert alert-danger alert-dismissible fade show">
		<span class="mdi mdi-alert-decagram"></span>
		<strong>{{ $error }}</strong>
		<button class="close" aria-label="Close" type="button" data-dismiss="alert">
			<span aria-hidden="true">×</span>
		</button>
	</div>
</div>
@endforeach

@endif

@if(session('error'))
<div class="form-group">
	<div class="alert  alert-danger alert-dismissible fade show">
		<span class="mdi mdi-alert-decagram"></span>
		<strong>{{ session('error') }}</strong>
		<button class="close" aria-label="Close" type="button" data-dismiss="alert">
			<span aria-hidden="true">×</span>
		</button>
	</div>
</div>
@endif

@if(session('warning'))
<div class="form-group">
	<div class="alert alert-dark alert-dismissible fade show">
		<span class="mdi mdi-alert"></span>
		<strong>{{ session('warning') }}</strong>
		<button class="close" aria-label="Close" type="button" data-dismiss="alert">
			<span aria-hidden="true">×</span>
		</button>
	</div>
</div>
@endif

@if(session('success'))
<div class="form-group">
	<div class="alert alert-success alert-dismissible fade show">
		<span class="mdi mdi-check"></span>
		<strong>{{ session('success') }}</strong>
		<button class="close" aria-label="Close" type="button" data-dismiss="alert">
			<span aria-hidden="true">×</span>
		</button>
	</div>
</div>
@endif