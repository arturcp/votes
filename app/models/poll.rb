# frozen_stringliteral: true

class Poll < ApplicationRecord
  enum status: { closed: 0, opened: 1 }
end
