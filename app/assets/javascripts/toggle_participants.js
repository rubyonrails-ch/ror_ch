$(document).ready(function () {
  $('.participants-toggle').on('mouseover', function (event) {
    $(event.target).parent().find('.participants').show();
  });
  $('.participants-toggle').on('mouseleave', function (event) {
    $(event.target).parent().find('.participants').hide();
  });
});
