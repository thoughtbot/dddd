$(document).ready(function() {
  $("#event-registration")
    .live("ajax:success", function(xhr, data, status) {
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
    if ($.browser.mozilla) {
        $('body').addClass("mozilla");

        var versionParts = $.browser.version.split("\.");
        var version = 0;
        if (versionParts.length > 0) {
            version = version + versionParts[0] * 1000000000000;
        }
        if (versionParts.length > 1) {
            version = version + versionParts[1] * 1000000000;
        }
        if (versionParts.length > 2) {
            version = version + versionParts[2] * 1000000;
        }
        if (versionParts.length > 3) {
            version = version + versionParts[3] * 1000;
        }

        if (version >= 1009002000000) {
            $('body').addClass("mozilla3-6andAbove");
        }
        else {
            $('body').addClass("mozilla3-5andBelow");
            var link = $("<link>");
            link.attr({
                    type: 'text/css',
                    rel: 'stylesheet',
                    href: '/stylesheets/firefox_3.5.css'
            });
            $("head").append(link);
        }
    }
});