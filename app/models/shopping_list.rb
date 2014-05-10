class ShoppingList < ActiveRecord::Base
  belongs_to :store

  validates :name, presence: true
  validates :purchase_date, presence: true
  validates :store, presence: true
end
