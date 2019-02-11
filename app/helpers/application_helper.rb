module ApplicationHelper
  def is_admin?(user, poll)
    return false unless user && poll

    poll.user_id == user.id
  end
end
