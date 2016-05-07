<% if @order.errors.messages.present? %>
$('#NewOrder<%= params[:product_code] %> .form-group').addClass('has-error')
<% else %>
$('#NewOrder<%= params[:product_code] %> h4').text 'Заявка оформлена'
$('#NewOrder<%= params[:product_code] %> .modal-body').text 'Наш менеджер свяжется с Вами в ближайшее время.'
<% end %>
