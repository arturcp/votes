# frozen_string_literal: true

class AdminPresenter < SimpleDelegator
  attr_reader :user, :category

  def initialize(user, category)
    @user = user
    @category = category
  end

  def voted?
    category.candidate_id.present?
  end

  def voted_in_candidate?(candidate_id)
    category.candidate_id == candidate_id
  end
end
