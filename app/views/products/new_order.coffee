<% if @order.errors.messages.present? %>
$('#Order<%= params[:product_code] %> .form-group').addClass('has-error')
<% else %>
$('#Order<%= params[:product_code] %> h4').text 'Заявка оформлена'
$('#Order<%= params[:product_code] %> .modal-body').text 'Наш менеджер свяжется с Вами в ближайшее время.'
<% end %>
