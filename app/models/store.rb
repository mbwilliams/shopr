class Store < ActiveRecord::Base
  has_many :shopping_lists

  validates :name,     presence: true
  validates :location, presence: true
end
