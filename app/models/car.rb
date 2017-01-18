class Car < ApplicationRecord
	belongs_to :manufacturer
	has_many :variants , :through => :model
	has_many :models
end
