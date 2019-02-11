# frozen_stringliteral: true

class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :poll
end
