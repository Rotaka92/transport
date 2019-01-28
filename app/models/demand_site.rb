class DemandSite < ApplicationRecord
  has_many :transportation
  has_many :supply_sites, through: :transportation, dependent: :destroy
  
  validates :demand, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
