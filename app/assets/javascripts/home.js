$(function() {
  Handlebars.registerHelper('idHelper', function() {
    return 'data-dataslate-id="fart"';
  });

  $(document).on('click', '.source', function(e) {
    e.preventDefault();
    $.ajax({
      url: "/dataslates.json",
      data: {
        source_id: $(this).data('source-id'),
      },
      type: "GET",
      dataType : "json",
 
      success: function( json ) {
        list = $('#dataslates');
        list.html(HandlebarsTemplates['dataslates'](json));
      },
 
      error: function( xhr, status, errorThrown ) {
        alert( "Sorry, there was a problem!" );
        console.log( "Error: " + errorThrown );
        console.log( "Status: " + status );
        console.dir( xhr );
      },
 
      complete: function( xhr, status ) {
      },
    });
  });

  $(document).on('click', '.dataslate', function(e) {
    e.preventDefault();
    $.ajax({
      url: "/dataslates/" + $(this).data('dataslate-id') + ".json",
      type: "GET",
      dataType : "json",
 
      success: function( json ) {
        $('#dataslate').html(HandlebarsTemplates['dataslate'](json));
      },
 
      error: function( xhr, status, errorThrown ) {
        alert( "Sorry, there was a problem!" );
        console.log( "Error: " + errorThrown );
        console.log( "Status: " + status );
        console.dir( xhr );
      },
 
      complete: function( xhr, status ) {
      },
    });
  });
});
