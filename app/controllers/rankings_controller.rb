# frozen_string_literal: true

class RankingsController < ApplicationController
  def show
    @poll = Poll.friendly.find(params[:poll_id])
  end
end
