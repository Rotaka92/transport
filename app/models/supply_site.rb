class SupplySite < ApplicationRecord
  has_many :transportation
  has_many :demand_sites, through: :transportation, dependent: :destroy

  validates :capacity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :name, uniqueness: true
end
