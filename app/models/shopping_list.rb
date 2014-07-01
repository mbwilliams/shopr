class ShoppingList < ActiveRecord::Base
  belongs_to :store

  has_many :items

  validates :purchase_date, presence: true
  validates :store_id,      presence: true
end
