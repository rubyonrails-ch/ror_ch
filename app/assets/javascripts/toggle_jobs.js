$(document).ready(function () {
  $('.expand-jobs').on('click', function (event) {
    $(event.target).parent().siblings('.long-description').toggle();
    $(event.target).toggleClass('expanded');
  });
});
