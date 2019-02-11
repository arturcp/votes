# frozen_stringliteral: true

require 'rails_helper'

RSpec.describe Poll, type: :model do
  describe 'default status' do
    it 'creates a poll with the `opened` status' do
      poll = Poll.create(name: 'new poll', poll_date: 1.day.from_now)
      expect(poll).to be_opened
    end
  end
end
