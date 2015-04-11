$ ->
  today = new Date()
  event_picker = $("#event_picker").datetimepicker({
    format: "DD/MM/YYYY"
  })
  event_picker.data("DateTimePicker").minDate today

$(document).ready ->
  $(".carousel").carousel interval: 3000
  return
