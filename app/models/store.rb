class Store < ActiveRecord::Base
  has_many :shopping_lists
  has_many :items

  validates :name,     presence: true
  validates :location, presence: true
end
