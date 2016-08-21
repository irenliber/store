class OrderMailer < ApplicationMailer

  def order(email, product_title, product_code, price, created_at)
    @product_title = product_title
    @product_code = product_code
    @price = price
    @created_at = created_at
    mail(to: email, subject: 'New order')
  end


end
