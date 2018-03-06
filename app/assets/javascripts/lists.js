
function ListForm() {
  console.log("Estamos melos? Sisas sisas");

  // Initial state <------------------------------------------------------------
  if($('.check-price').prop('checked') === true){
    $('.check-quantity').prop('checked', false);
    ShowPriceForm()
  };
  if($('.check-quantity').prop('checked') === true){
    $('.check-price').prop('checked', false);
    ShowQuantityForm()
  };
  if($('.check-discount-range').prop('checked') === true){
    ShowDiscountCol()
  }else{
    HideDiscountCol()
  };
  if($('.check-free-shipping').prop('checked') === true){
    HideShippingCol()
  }else{
    ShowShippingCol()
  };
  if(($('.check-free-shipping').prop('checked') === true)&&($('.check-discount-range').prop('checked') === false)){
    console.log("Bye table");
    HideBothTables()
  }else{
    $(".no-discount-no-shipping").css("display", "none");
  }


  // Checkbox changes <---------------------------------------------------------
  $('.check-price').on('change', function() {
    if($('.check-price').prop('checked') === true){
      $('.check-quantity').prop('checked', false);
      ShowPriceForm()
    }else{
      $('.check-quantity').prop('checked', true);
      ShowQuantityForm()
    };
  });


  $('.check-quantity').on('change', function() {
    if($('.check-quantity').prop('checked') === true){
      $('.check-price').prop('checked', false);
      ShowQuantityForm()
    }else{
      $('.check-price').prop('checked', true);
      ShowPriceForm()
    };
  });


  $('.check-discount-range').on('change', function() {
    if(($('.check-free-shipping').prop('checked') === true)&&($('.check-discount-range').prop('checked') === false)){
      console.log("Bye table");
      HideBothTables()
    }else{
      $(".no-discount-no-shipping").css("display", "none");
      ShowTable()
      if($('.check-discount-range').prop('checked') === true){
        ShowDiscountCol()
      }else{
        HideDiscountCol()
      };
    }
  });

  $('.check-free-shipping').on('change', function() {
    if(($('.check-free-shipping').prop('checked') === true)&&($('.check-discount-range').prop('checked') === false)){
      console.log("Bye table");
      HideBothTables()
    }else{
      $(".no-discount-no-shipping").css("display", "none");
      ShowTable()
      if($('.check-free-shipping').prop('checked') === true){
        HideShippingCol()
      }else{
        ShowShippingCol()
      };
    }
  });

  // Sub functions <-------------------------------------------------------------
  function ShowPriceForm(){
    $(".table-of-prices").css("display", "block");
    $(".table-of-quantity").css("display", "none");
  }
  function ShowQuantityForm(){
    $(".table-of-prices").css("display", "none");
    $(".table-of-quantity").css("display", "block");
  }
  function ShowDiscountCol(){
    $(".discount-col").css("display", "table-cell");
  }
  function HideDiscountCol(){
    $(".discount-col").css("display", "none");
  }
  function ShowShippingCol(){
    $(".shipping-col").css("display", "table-cell");
  }
  function HideShippingCol(){
    $(".shipping-col").css("display", "none");
  }
  function HideBothTables(){
      $(".table-of-prices").css("display", "none");
      $(".table-of-quantity").css("display", "none");
      $(".no-discount-no-shipping").css("display", "block");

  }
  function ShowTable() {
    if($('.check-price').prop('checked') === true){
      $('.check-quantity').prop('checked', false);
      ShowPriceForm()
    }else{
      $('.check-quantity').prop('checked', true);
      ShowQuantityForm()
    };

    if($('.check-quantity').prop('checked') === true){
      $('.check-price').prop('checked', false);
      ShowQuantityForm()
    }else{
      $('.check-price').prop('checked', true);
      ShowPriceForm()
    };
  }


}
