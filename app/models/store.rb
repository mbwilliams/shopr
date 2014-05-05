class Store < ActiveRecord::Base
  validates :name,     presence: true
  validates :location, presence: true

  has_many :shopping_lists
end
