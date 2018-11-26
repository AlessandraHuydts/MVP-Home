class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_votable
  acts_as_voter
  acts_as_taggable
  acts_as_taggable_on :cuisines, :interests, :restrictions

def self.matched?(user2)
  self.liked_by user2
end

# controller:
  def matching
    @user = User.find_params[:id]
    current_user.likes @user
    if current_user.matched?(@user)
      match = Match.new(user1_id: current_user, user2_id: @user)
      match.save
      redirect_to root
    end
  end
end



