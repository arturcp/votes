# frozen_string_literal: true

module Admin
  class ResultsController < ApplicationController
    def create
      if current_user.admin?(category)
        category.update(candidate_id: candidate_id)

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
  end
end
