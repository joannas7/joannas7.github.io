---
---
'use strict'

$ ->
  # This code brings up the responsive mobile menu
  $('#bars, #navDemo .bar-item.button').click ->
    $('#navDemo').toggleClass 'show'

  # This code brings up the alternative header when scrolling down the page
  $(window).scroll ->
    if $(document).scrollTop() > 100
      $('#myNavbar').attr 'class', 'bar card-2 animate-left'
    else
      $('#myNavbar').attr 'class', 'bar'

  $('.flexslider').flexslider {
    animation: 'fade',
    controlsContainer: '.flexslider',
    slideshowSpeed: 5000
  }

  return
