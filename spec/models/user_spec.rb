# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { users(:john_doe) }
  let(:admin_user) { users(:admin) }
  let(:category) { categories(:best_movie) }

  describe '#admin?' do
    context 'when user is admin' do
      it { expect(admin_user.admin?(category)).to be_truthy }
    end

    context 'when user is not admin' do
      it { expect(user.admin?(category)).to be_falsy }
    end
  end

  context 'when category is nil' do
    it { expect(user.admin?(nil)).to be_falsy }
  end
end
