function ResizeSupplierCover() {
  $( window ).resize(function() {
    var width = $('.supplier-cover').width();
    $(".supplier-cover").css({'height':width*0.33+'px'});
  });

  $(document).ready(function(){
    var width = $('.supplier-cover').width();
    $(".supplier-cover").css({'height':width*0.33+'px'});
  });
}
