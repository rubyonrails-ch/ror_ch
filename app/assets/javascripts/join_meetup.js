$(document).ready(function () {
  $('.join-meetup').on('click', function (event) {
    var eventId = $(event.target).attr('id');
    $('.spinner').show();

    $.ajax({
      method: "POST",
      url: "/join_meetup/"+eventId
    })
    .done(function( msg ) {
      alert( msg );
      $('.spinner').hide();
    });
  });
});
