class Transportation < ApplicationRecord
  belongs_to :supply_site
  belongs_to :demand_site
  
  validates :cost_factor, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
