# frozen_string_literal: true

class PollsController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @polls = Poll.opened.sort
  end

  def show
    @poll = Poll.friendly.find(params[:id])
  end
end
