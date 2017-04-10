class Customer < ApplicationRecord
	has_many :cars

	validates :email, presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false} #missachtet die gross oder kleinschreibung der email adresse


	DEAR_OPTIONS = [
    'Frau', 'Herr', 'Firma'
    ]
    validates :dear, inclusion: { in: DEAR_OPTIONS }

   # def self.search(search)
  	#	where("@customers.lastname LIKE ?", "%#{search}%") 
	#end

end
