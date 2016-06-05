class User < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 2, maximum: 20}
	validates :password, presence: true, length: {minimum: 5, maximum:15}
end
