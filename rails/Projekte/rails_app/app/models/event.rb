class Event < ApplicationRecord
	has_many :registrations, :dependent => :destroy 
	has_many :likes, dependent: :destroy
	has_many :likers, through: :likes, source: :user

	has_many :categorizations, dependent: :destroy
	has_many :categories, through: :categorizations

	validates :name, :description, :location, presence: true #validiere in der Spalte Name
	validates :description, length: { minimum: 20 } #Beschreibung mindestens 25 Zeichen
	validates :price, numericality: { greater_than_or_equal_to: 0} 

	def free? 

		price.blank? || price.zero?
			
	end
end

