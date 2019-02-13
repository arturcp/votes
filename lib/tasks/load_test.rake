require 'colorize'

desc 'Test the performance with many users voting. It is useful to check the speed of the ranking page.'
task load_test: :environment do
  last_user_id = User.last&.id
  last_vote_id = Vote.last&.id
  users_count = ENV['USERS'] || 200
  poll = Poll.first

  (1..users_count).each do |i|
    user = User.create!(name: "User #{i}", email: "user_#{i}@youse.com.br", password: '123123')
    poll.categories.each do |category|
      Vote.create!(user: user, category_id: category.id, candidate_id: category.candidates[rand(category.candidates.size)].id)
      print '.'.green
    end
  end
end
