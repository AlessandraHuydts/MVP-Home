class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    # @current_user = current_user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user

    redirect_to user_path(@user)
  end

  def matching
    @user = User.find(params[:id])
    authorize @user
    current_user.likes @user
    if @user.matched?(current_user)
      match = Match.create!(user1_id: current_user.id, user2_id: @user.id)
      ChatRoom.create!(match: match)
      redirect_to user_path(current_user.nearbys.sample(1))
    else
      redirect_to user_path(current_user.nearbys.sample(1))
    end
  end

  def set_user_location
    @user = current_user
    authorize @user
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
    @user.save

    redirect_to user_path(current_user.nearbys.sample.id)
  end
end
