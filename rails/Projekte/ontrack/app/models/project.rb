class Project < ApplicationRecord
	has_many :iterations

	validates :title, presence: true #Der Name muss angegeben werden
  

end
