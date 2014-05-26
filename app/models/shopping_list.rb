class ShoppingList < ActiveRecord::Base
  belongs_to :store

  validates :purchase_date, presence: true
  validates :store_id,      presence: true
end
