# frozen_string_literal: true

class VotesController < ApplicationController
  def create
    if current_user.admin?(category)
      head :forbidden
    else
      save_vote
      head :no_content
    end
  end

  private

  def category_id
    @category_id ||= params['category_id'].to_i
  end

  def candidate_id
    @candidate_id ||= params['candidate_id'].to_i
  end

  def category
    @category ||= Category.find(category_id)
  end

  def current_vote
    @current_vote ||= Vote.find_by(category_id: params['category_id'],
      user_id: current_user.id)
  end

  def save_vote
    vote = Vote.find_by(category_id: category_id, user_id: current_user.id)

    if vote
      vote.update(candidate_id: candidate_id)
    else
      Vote.create!(category_id: category_id, user_id: current_user.id, candidate_id: candidate_id)
    end
  end
end
