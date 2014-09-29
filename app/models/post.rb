class Post < ActiveRecord::Base
	belongs_to :user
	
	validates :user_id, presence: true
	validates :content, presence: true, length: { minimum: 50 }
	#validates :name, presence: true, length: {minimum: 10}
end
