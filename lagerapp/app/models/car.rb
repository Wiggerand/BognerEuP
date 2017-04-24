class Car < ApplicationRecord
  belongs_to :customer
  has_many :tires, dependent: :destroy
  #validates :registration, presence: true, format: { with: }
  VEHICLE_OPTIONS = [
  	'Alfa Romeo', 
    'Audi',
    'Austin',
  	'BMW',
    'Bugatti',
    'Chervrolet',
  	'Citroen',
  	'Dacia',
  	'Ferrari',
    'Fiat',
    'Ford',
    'Seat',
    'Skoda',
  	'Tesla',
  	'Porsche',
  	'Volkswagen',
  	'Wartburg',
    'diverse'
  ]
  validates :vehicle, inclusion: { in: VEHICLE_OPTIONS }
end
