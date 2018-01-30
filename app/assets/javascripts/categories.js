function ResizeProductImg() {
  $( window ).resize(function() {
    var cw = $('.adjust-product-img').width();
    $(".adjust-product-img").css({'height':cw*1.1182+'px'});
  });
}
