class Transaction < ApplicationRecord
	belongs_to :customer
	belongs_to :variant
	has_one :model , through: :variant
	
end
