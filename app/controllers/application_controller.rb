class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # rescue_from ActionPolicy::Unauthorized do |ex|
  #   # Exception object contains the following information
  #   ex.policy #=> policy class, e.g. UserPolicy
  #   ex.rule #=> applied rule, e.g. :show?
  # end
end
