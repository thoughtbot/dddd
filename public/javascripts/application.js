jQuery(function($) {
  $("#event-registration")
    .live("ajax:success", function(xhr, data, status) {
      $("#registration").html(data);
    });
});
