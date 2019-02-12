# frozen_string_literal: true

class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :poll
  has_many :candidates
  belongs_to :candidate, optional: true
end
