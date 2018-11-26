class UsersController < ApplicationController
  before_action :cuisine_params, only: [:update]

  def show
    @user = current_user
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    params[:user][:cuisine_list].each { |cuisine| @user.cuisine_list.add(cuisine) }
    @user.save
    authorize @user

    redirect_to user_path(@user)
  end

  private

  def cuisine_params
    params.require(:user).permit(cuisine_list: [])
  end
end
