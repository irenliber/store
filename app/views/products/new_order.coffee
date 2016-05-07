<% if @order.errors.messages.present? %>
$('#NewOrder .form-group').addClass('has-error')
<% else %>
$('#NewOrder h4').text 'Заявка оформлена'
$('#NewOrder .modal-body').text 'Наш менеджер свяжется с Вами в ближайшее время.'
<% end %>
