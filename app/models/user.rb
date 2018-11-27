class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_votable
  acts_as_voter
  acts_as_taggable
  acts_as_taggable_on :cuisines, :interests, :restrictions


def matched?(user2)
  self.liked? user2
end

def random_user
  @users = User.all_except(current_user)
end
end



