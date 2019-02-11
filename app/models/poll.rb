# frozen_stringliteral: true

class Poll < ApplicationRecord
  extend FriendlyId

  enum status: { closed: 0, opened: 1 }
  friendly_id :name, use: :slugged

  has_many :categories
end
