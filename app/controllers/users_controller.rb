class UsersController < ApplicationController
  before_action :cuisine_params, only: [:update]

  def edit
    @user = current_user
    authorize @user
  end

  def update
    byebug
    @user = current_user

    params[]

    @user.interest_list.add(tag) << cuisine_params
    authorize @user
  end

  private

  def cuisine_params
    params.require(:user).permit(cuisine_list: [])
  end
end
