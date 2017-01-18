class Variant < ApplicationRecord
	belongs_to :model
	belongs_to :car
	has_many :transactions
	
end
