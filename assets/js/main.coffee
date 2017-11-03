---
---
'use strict'

$ ->
  # This code brings up the responsive mobile menu
  $('#bar, #navDemo .bar-item.button').click ->
    $('#navDemo, #myNavbar').toggleClass 'show'

  $('a[href$="#home"]').click ->
    if $('#navDemo').hasClass 'show'
      $('#navDemo, #myNavbar').removeClass 'show'
    scrollToAnchor('home')

  # This code brings up the alternative header when scrolling down the page
  $(window).scroll ->
    if $(document).scrollTop() > 100
      $('#myNavbar').attr 'class', 'bar card-2 animate-left'
      $('#navDemo').addClass 'scrolled'
    else
      $('#myNavbar').attr 'class', 'bar'
      $('#navDemo').removeClass 'scrolled'

  $('.flexslider').flexslider {
    animation: 'fade',
    controlsContainer: '.flexslider',
    slideshowSpeed: 5000
  }

  $('a[href$="about"]').click ->
    scrollToAnchor('about')

  $('a[href$="portfolio"]').click ->
    scrollToAnchor('portfolio')

  $('a[href$="connect"]').click ->
    scrollToAnchor('connect')

scrollToAnchor = (anchor) ->
  $('html,body').animate {
    scrollTop: $("#"+anchor).offset().top
    }, "slow"
