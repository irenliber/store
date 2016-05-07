class Order < ActiveRecord::Base
  validates :phone, presence: true
end
