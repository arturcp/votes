# frozen_string_literal: true

class VotesPresenter < SimpleDelegator
  attr_reader :user, :category

  def initialize(user, category)
    @user = user
    @category = category
  end

  def voted?
    votes.size > 0
  end

  def voted_in_candidate?(candidate_id)
    votes.select { |vote| vote.candidate_id == candidate_id }.size > 0
  end

  def votes
    @votes ||= Vote.where(category_id: category.id, user_id: user.id)
  end
end
