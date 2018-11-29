class ShoppingList < ActiveRecord::Base
  has_many :items, dependent: :destroy
  validates :name, :description, presence: true

  def total
  	items.map do |item|
  	  item.subtotal	
  	end.sum
  end 
end
