// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.tooltipster



// $(document).ready(function() {
//     $('.show-tooltip').tooltipster({
//         animation: 'slide',
//         delay: 500,
//         theme: 'tooltipster-default',
//         touchDevices: false,
//         trigger: 'hover'
//     });
// });


$(function() {

  $('.roll-over-item').hover(
    function() {
      $(this).parent().find('.more-info').show()
    // console.log("hover in");
  },
    function() {
      $(this).parent().find('.more-info').hide()
    // console.log("hover out");
  })
});
