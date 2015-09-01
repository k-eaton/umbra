class User < ActiveRecord::Base
	validates :phone, presence: true, uniqueness: true
	validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ 
	has_many :messages
end
