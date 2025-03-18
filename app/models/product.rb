class Product < ApplicationRecord
  validates :name, :presence => true,  :length => { :minimum => 3 }
  validates :price, :presence => true, comparison: { greater_than: 0 }
  validates :stock, :presence => true, comparison: { greater_than: 0 }
  belongs_to :category
end
