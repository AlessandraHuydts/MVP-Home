class UsersController < ApplicationController
  before_action :cuisine_params, only: [:update]

  def show
    @user = User.find(params[:id])
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

  def matching
    @user = User.find(params[:id])
    authorize @user
    current_user.likes @user
    if @user.matched?(current_user)
      Match.create!(user1_id: current_user.id, user2_id: @user.id)
      redirect_to user_path(User.except(current_user).sample(1))
    else
      redirect_to user_path(User.except(current_user).sample(1))
    end
  end

  def set_user_location
    @user = current_user
    authorize @user
    # latitude = params[:search][:query].split(',').first
    # longitude = params[:search][:query].split(',').second
    # @user.update_columns(
    #   latitude: latitude,
    #   longitude: longitude
    # )
  end

  def post_locate
    @user = current_user
    authorize @user
    latitude = params[:search][:query].split(',').first.to_f
    longitude = params[:search][:query].split(',').second.to_f
    @user.update_columns(
      latitude: latitude,
      longitude: longitude
    )
  end

  private

  def cuisine_params
    params.require(:user).permit(cuisine_list: [])
  end
end
