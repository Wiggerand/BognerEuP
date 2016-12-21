class Registration < ApplicationRecord
  belongs_to :event	#gehört zu event

  How_Heard_Options = [
  	'Newsletter',
  	'Blog Post',
  	'Twitter',
  	'Other'
  ]

  validates :name, presence: true #Der Name muss angegeben werden
  validates :email, format: { with: /(\S+)@(\S+)/ } #muss in dem Format eingegeben werden
  validates :how_heard, inclusion: { in: How_Heard_Options } #Bezieht sich auf die HOW_HEARD_OPTIONS, gehört von...
end
