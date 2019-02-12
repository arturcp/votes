# frozen_string_literal: true

class Ranking
  def self.calculate(category)
    votes = Vote.where(category_id: category.id)
    votes.each do |vote|
      score = vote.candidate_id == category.candidate_id ? category.points : 0
      vote.update(score: score)
    end
  end
end
