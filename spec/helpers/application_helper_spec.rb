# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  let(:user) { users(:john_doe) }
  let(:admin) { users(:admin) }
  let(:poll) { polls(:oscar) }

  describe '.is_admin?' do
    context 'when user is not logged in' do
      it 'returns false' do
        expect(helper.is_admin?(nil, poll)).to be_falsy
      end
    end

    context 'when user is logged in' do
      context 'and user is admin' do
        it 'returns true' do
          expect(helper.is_admin?(admin, poll)).to be_truthy
        end
      end

      context 'and user is not admin' do
        it 'returns false' do
          expect(helper.is_admin?(user, poll)).to be_falsy
        end
      end
    end

    context 'when poll is nil' do
      it 'returns false' do
        expect(helper.is_admin?(user, nil)).to be_falsy
      end
    end
  end
end
