class PostPolicy < ActionPolicy::Base
  authorize :user, allow_nil: true

  def index?
    # allow everyone to perform "index" activity on posts
    true
  end

  def edit?
    user.id == record.user_id || user.admin?
  end

  def update?
    # here we can access our context and record
    (user.id == record.user_id)
  end

  def destroy?
    user.admin?
  end

  def change_user?
    user ||= User.new
    user.admin?
  end
end
