# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  APPROVED_DOMAINS = ['youse.com.br', 'youse.co', 'helloyouser.com.br'].freeze

  validates :email, presence: true, if: :domain_check
  has_many :polls

  def domain_check
    unless APPROVED_DOMAINS.any? { |word| email.end_with?(word)}
      errors.add(:email, "is not from a valid domain")
    end
  end

  def admin?(category)
    return false unless category

    category.poll.user_id == self.id
  end
end
