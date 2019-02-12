# frozen_string_literal: true

class Poll < ApplicationRecord
  extend FriendlyId

  enum status: { closed: 0, opened: 1 }
  friendly_id :name, use: :slugged

  has_many :categories
  belongs_to :user

  def expired?
    Time.current.utc > poll_date.utc || closed?
  end
end
