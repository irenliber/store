class OrderMailer < ApplicationMailer

  def order(email)
    mail(to: email, subject: 'New order')
  end

  # def
  #   @order = Order.find(params[:id])
  # end


end
