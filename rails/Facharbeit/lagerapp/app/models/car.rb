class Car < ApplicationRecord
  belongs_to :customer
  has_many :tires
  #validates :registration, presence: true, format: { with: }
  VEHICLE_OPTIONS = [
  	'Audi',
  	'BMW',
  	'Citroen',
  	'Dacia',
  	'Ford',
  	'Ferrari',
  	'Tesla',
  	'Porsche',
  	'Volkswagen',
  	'Wartburg'
  ]
  validates :vehicle, inclusion: { in: VEHICLE_OPTIONS }
end
