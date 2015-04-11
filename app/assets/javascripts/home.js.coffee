$ ->
  today = new Date()
  event_picker = $("#event_picker").datetimepicker()
  event_picker.data("DateTimePicker").minDate today

$(document).ready ->
  $(".carousel").carousel interval: 3000
  return
