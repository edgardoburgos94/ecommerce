function SizeQuantity() {

  $('.size-selector').on('click', function() {
  var form_field_value = $(".size-selector").val()
  console.log(form_field_value);
  if ($(".amount").val()>form_field_value) {
    console.log("No está permitido");
  };
  });

}
