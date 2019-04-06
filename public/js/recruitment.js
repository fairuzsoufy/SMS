
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
      left: "agendaDay,month,listMonth",
      center: "title",
    },
    buttonText:
    { 
      today:    'Today',
      month:    'Month',
      week:     'Week',
      list:     'List'
    },
    contentHeight: 600,
    eventLimit: true,
    selectable: true,
    selectHelper: true,       
    events: JSON.parse(JSON.stringify(json_events)),
    Duration: '15 minutes',
    defaultView: 'listMonth',
    noEventsMessage: "Nothing to see here!",
    eventClick: function(calEvent, jsEvent, view) {

      $('#time').val(calEvent.id);

      $('#timeDisplay').val(calEvent.start); 

      $(this).toggle('slow');

    }

  });
});

