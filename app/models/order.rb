class Order < ActiveRecord::Base
  validates :phone, presence: true

  after_create :send_notification

  def send_notification
    OrderMailer.order('avtopuls72@yandex.ru').deliver_now #заменить почту олега личную
  end

  # def show
  #   @order = Order.find(params[:id])
  # end


end
