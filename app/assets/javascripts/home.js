$(function() {
  $(document).on('click', '.source', function(e) {
    e.preventDefault();
    $.ajax({
      url: "/dataslates.json",
      data: {
        source_id: 1
      },
      type: "GET",
      dataType : "json",
 
      success: function( json ) {
        console.log(json);
        console.log("fads");
        $(json).each(function(i, dataslate) {
          console.log(dataslate['title']);
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
