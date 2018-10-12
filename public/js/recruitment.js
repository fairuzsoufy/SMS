
   $('#committee_id').on('change', function(){

    var committee = $('#committee_id').val();

    $.ajax({
      url: urlSchedule+'/get-full-schedule/'+committee,
      type: 'GET',
      dataType: 'json',
      async: false,
      success: function(response){
        json_events = response;

        $('.calendar').fullCalendar('removeEvents');
        $('.calendar').fullCalendar('addEventSource', JSON.parse(JSON.stringify(json_events)));         
        $('.calendar').fullCalendar('rerenderEvents' );
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
      eventClick: function(calEvent, jsEvent, view) {

        $('#time').val(calEvent.id);

        $('#timeDisplay').val(calEvent.start); 

        $(this).toggle('slow');

    }

  });
  });

