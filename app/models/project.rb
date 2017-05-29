class Project < ApplicationRecord
  has_many :lineItems

  accepts_nested_attributes_for :lineItems
  
end
