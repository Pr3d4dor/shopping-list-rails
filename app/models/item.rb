class Item < ActiveRecord::Base
  belongs_to :shopping_list
  validates :name, :description, :quantity, presence: true

  def subtotal
  	return quantity * price
  end 
end
