$ ->
  today = new Date()
  event_date_picker = $("#event_date_picker").datetimepicker({
    format: "DD/MM/YYYY"
  })
  event_date_picker.data("DateTimePicker").minDate today
  
  event_time_picker = $("#event_time_picker").datetimepicker({
    format: "LT"
  })
  event_time_picker.data("DateTimePicker").minDate today

$(document).ready ->
  $(".carousel").carousel interval: 3000
  return
