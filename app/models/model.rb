class Model < ApplicationRecord
	belongs_to :car
	has_many :variants
	has_many :transactions
	
end
