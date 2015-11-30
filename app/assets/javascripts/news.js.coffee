# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.menu-item').each (index,element) ->
    size_menu = $(this).width()
    size_sub_menu = $(this).find('.sub-menu').width()
    if size_menu>size_sub_menu
      $(this).find('.sub-menu').css 'width', size_menu
  return
