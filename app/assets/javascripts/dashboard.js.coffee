# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#new_commute').bind 'ajax:success', (event, data, status, xhr) ->
    $('#cash_score').text data.commute.cash_score
    $('#cal_score').text data.commute.cal_score
    $('#envfp_score').text data.commute.envfp_score
    $('.score').show()
