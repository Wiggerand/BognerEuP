class Registration < ApplicationRecord
  belongs_to :event	#gehört zu event
  belongs_to :user
  HOW_HEARD_OPTIONS = [
  	'Newsletter',
  	'Blog Post',
  	'Twitter',
  	'Other'
  ]

  validates :user_id, presence: true #Der Name muss angegeben werden
  #validates :email, format: { with: /(\S+)@(\S+)/ } #muss in dem Format eingegeben werden
  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS } #Bezieht sich auf die HOW_HEARD_OPTIONS, gehört von...
end
