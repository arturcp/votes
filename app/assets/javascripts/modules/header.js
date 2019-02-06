jQuery(function($) {
  $(window).scroll(function() {
    if ($(this).scrollTop() < 600) {
      $('header').hide();
    } else {
      $('header').show();
    }
  });
});​
