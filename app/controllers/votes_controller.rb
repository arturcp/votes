# frozen_string_literal: true

class VotesController < ApplicationController
  def create
    if action_allowed?
      save_vote
      head :no_content
    else
      head :forbidden
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

  def poll
    @poll ||= category.poll
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

  def action_allowed?
    poll.opened? && !poll.expired? && !current_user.admin?(category)
  end
end
