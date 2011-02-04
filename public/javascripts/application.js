$(document).ready(function() {
  $("#event-registration").live("ajax:success", function(xhr, data, status) {
    $("#registration").html(data);
  });

  $('a[href^=#]').bind('click', function(e) {
    e.preventDefault(); //prevent the "normal" behaviour which would be a "hard" jump

    var target = $(this).attr("href");

    $('html, body').stop().animate({ scrollTop: $(target).offset().top }, 1000, function() {
      location.hash = target;
    });

    return false;
  });
});
