class Income < ActiveRecord::Base
	validates :amount, presence:true, numericality: {:greater_than_or_equal_to => 0}
	validates :owner, presence: true, length: {minimum: 2, maximum: 20}
	validates :description, presence: true, length: {minimum: 5, maximum: 60}
end
