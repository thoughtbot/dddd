$(document).ready(function() {
  $('.title h2 a').click(function() {
    $(this).parent().parent().parent().find('.details').toggle();
  });
});
