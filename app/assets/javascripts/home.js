$(function() {
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
        list = $('#dataslates ul');
        list.html('');
        $(json).each(function(i, dataslate) {
          list.append("<li><a href='#' class='dataslate' data-dataslate-id='" + dataslate['id'] + "'>" + dataslate['title'] + '</a></li>');
        });
        $('#dataslates').removeClass('hidden');  
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
        container = $('#dataslate');
        container.children('h3').html(json['title']);
        list = container.children('ul');
        list.html('');
        list.append('<li><b>Role</b>: ' + json['role'] + '</li>');
        list.append('<li><b>Picture</b>: ' + json['picture_url'] + '</li>')
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
