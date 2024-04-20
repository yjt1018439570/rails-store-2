class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items

  def total_price
    order_items.sum { |item| item.price * item.quantity }
  end
end
