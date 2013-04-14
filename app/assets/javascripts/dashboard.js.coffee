# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#new_commute').bind 'ajax:success', (event, data, status, xhr) ->
    console.log data
    $('#cash_score').text data.cash_score
    $('#cal_score').text data.cal_score
    $('#envfp_score').text data.envfp_score
    $('.score').show()
  .bind 'ajax:error', ->
    alert 'No!'
