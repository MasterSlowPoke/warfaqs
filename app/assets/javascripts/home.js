$(function() {
  Handlebars.registerHelper('idHelper', function() {
    return 'data-dataslate-id="fart"';
  });

  $(document).on('click', '.faction', function(e) {
    e.preventDefault();
    $.ajax({
      url: "/dataslates.json",
      data: {
        faction_id: $(this).data('faction-id'),
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
