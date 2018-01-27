function ProductsView() {
  $('.show-btn').on('click', function() {
    alert("Tranquilo tigre, estamos trabajando en eso");
    console.log("Entró");
  });
}

function DeleteActiveClass() {
  $(".active").removeClass( "active" )
}

function AddCartActiveClass() {
  $("#carrito").addClass( "active" )
}
