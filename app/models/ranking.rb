# frozen_string_literal: true

class Ranking
  def self.distribute_points_for_category(category)
    votes = Vote.where(category_id: category.id)
    votes.each do |vote|
      score = vote.candidate_id == category.candidate_id ? category.points : 0
      vote.update(score: score)
    end
  end

  def self.calculate(poll)
    Rails.cache.fetch("ranking-for-#{poll.slug}", expires_in: 1.minute) do
      list = {}
      poll.categories.each do |category|
        votes = Vote.where(category_id: category.id)
        votes.each do |vote|
          next if vote.candidate_id != category.candidate_id

          list[vote.user_id] ||= RankingUser.new(user_name: vote.user.name)
          list[vote.user_id].add_points(category.points)
        end
      end

      list.values.sort
    end
  end
end
