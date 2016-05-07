unless $('#NewOrder').hasClass()
 $('body').append '<div id="NewOrder"></div>'
  
$('#NewOrder').replaceWith '<%= j render 'products/order_modal'%>'
$('#NewOrder').modal 'show'