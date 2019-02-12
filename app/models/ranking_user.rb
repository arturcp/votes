# frozen_string_literal: true

class RankingUser
  attr_reader :score, :user_name

  def initialize(user_name:)
    @score = 0
    @user_name = user_name
  end

  def add_points(points)
    @score += points
  end

  def <=>(a, b)
    a.score <=> b.score
  end
end
