namespace :db do 
	desc "Fill" 
	task populate: :environment do
		make_posts
	end
end

def make_posts
	10.times do |n|
		Post.create!(name: Faker::Lorem.sentence(1), content: Faker::Lorem.sentence(10), user_id: n)
	end
end