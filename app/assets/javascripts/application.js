// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require owl.carousel
//= require_tree .


$(document).foundation();

$(document).ready(function() {
  console.log('ready')
  var owl = $('#owl');
  owl.owlCarousel({
      items : 1, //1 items above 1000px browser width
      itemsDesktop : [1000, 5], //5 items between 1000px and 901px
      itemsDesktopSmall : [900, 3], // betweem 900px and 601px
      itemsTablet: [600, 2], //2 items between 600 and 0
      itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
      loop: false,
      responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:1,
            nav:true
        },
        1000:{
            items:1,
            nav:true,
            loop:false
        }
    }
  });
});