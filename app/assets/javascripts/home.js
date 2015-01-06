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
