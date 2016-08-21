class Order < ActiveRecord::Base
  validates :phone, presence: true

  after_create :send_notification

  def send_notification
    OrderMailer.order('avtopuls72@yandex.ru', product_title, product_code, price, created_at).deliver_now #заменить почту олега личную
  end

end
