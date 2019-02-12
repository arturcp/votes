# frozen_string_literal: true

class RankingsController < ApplicationController
  def show
    @poll = Poll.friendly.find(params[:poll_id])
    @partial_result = Category.exists?(poll_id: @poll.id, candidate_id: nil)
    @ranking = Ranking.calculate(@poll)
  end
end
