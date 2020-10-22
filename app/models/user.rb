class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  #before_create :set_role

  enum role: %w[admin editor viewer]

  private

  def set_role
    viewer!
  end
end
