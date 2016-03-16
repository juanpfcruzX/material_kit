// Dynamic load the javascript init based on features specified from view
// Combine the best practice to handle javascript invocation in rails
// http://brandonhilkert.com/blog/organizing-javascript-in-rails-application-with-turbolinks/
// https://viget.com/extend/javascript-execution-patterns-for-non-web-apps

window.App || (window.App = {});

// Get the features array
App.features = function() {
  var features = $('body').data('features');
  var featuresArray = [];
  if(features) {
    featuresArray = features.split(' ');
  }
  return featuresArray;
};

// Define the default feature in here
$(document).on("page:change", function() {
  if ($.inArray('profile-page',App.features()) >= 0) {
		// the body of this function is in assets/material-kit.js
		$(window).on('scroll', materialKit.checkScrollForTransparentNavbar);
  }
  if ($.inArray('index-page',App.features()) >= 0) {
    // the body of this function is in assets/material-kit.js
    materialKit.initSliders();
    $(window).on('scroll', materialKit.checkScrollForTransparentNavbar);

          window_width = $(window).width();

          if (window_width >= 768){
              big_image = $('.wrapper > .header');

      $(window).on('scroll', materialKitDemo.checkScrollForParallax);
    }
  }
  if ($.inArray('signup-page',App.features()) >= 0) {
    // the body of this function is in assets/material-kit.js
    $(window).on('scroll', materialKit.checkScrollForTransparentNavbar);
  }
  if ($.inArray('tutorial-page',App.features()) >= 0) {
    // the body of this function is in assets/material-kit.js
    $(window).on('scroll', materialKit.checkScrollForTransparentNavbar);
  }
  if ($.inArray('components-page',App.features()) >= 0) {
    var header_height;
    var fixed_section;
    var floating = false;

    $().ready(function(){
        suggestions_distance = $("#suggestions").offset();
        pay_height = $('.fixed-section').outerHeight();

  $(window).on('scroll', materialKit.checkScrollForTransparentNavbar);

  // the body of this function is in assets/material-kit.js
  materialKit.initSliders();
    });
  }
});
