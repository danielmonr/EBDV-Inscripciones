class Kid < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 2, maximum: 20}
	validates :lastf, presence:true
	validates :age, presence:true, numericality: {only_integer:true, :greater_than_or_equal_to => 3, :less_than_or_equal_to =>13}
	validates :address, presence:true
	validates :phone, presence:true, numericality: {only_integer:true, :greater_than => 0}
	validates :celphone, numericality: {only_integer:true,:greater_than => 0}
	validates :pay, presence:true, numericality: {only_integer:true ,:greater_than_or_equal_to => 0, :less_than_or_equal_to =>90}
	validates :pick_up, presence:true
end
