function ResizeProductImg() {
  $( window ).resize(function() {
    var cw = $('.adjust-product-img').width();
    $(".adjust-product-img").css({'height':cw*1.1182+'px'});
  });
  $(document).ready(function(){
    var cw = $('.adjust-product-img').width();
    $(".adjust-product-img").css({'height':cw*1.1182+'px'});
  });
}

function ResizeCategoryIcon() {
  $( window ).resize(function() {
    var cw = $('.adjust-category-icon').width();
    $(".adjust-category-icon").css({'height':cw*1.1+'px'});
  });
  $(document).ready(function(){
    var cw = $('.adjust-category-icon').width();
    $(".adjust-category-icon").css({'height':cw*1.1+'px'});
  });
}
