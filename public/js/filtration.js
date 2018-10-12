

$('.btn-handle').on('click', function(){

	var row = $(this).closest("tr");

	var action = $(this).attr('data-action');

	var applicant = $(this).attr('data-applicant');

	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		}
	});


	$.ajax({	
		url: url+'/submit',
		type: 'POST',
		data: { action: action, applicant_id: applicant },
		success: function(data){

			row.hide('slow')
		},
		fail: function(data){
		}


	});

});