class RegistrationController < ApplicationController
  def cuisines_show
    @user = current_user
    authorize @user
  end

  def cuisines_edit
    authorize current_user
    params[:user][:cuisine_list].each do |cuisine|
      current_user.cuisine_list.add(cuisine)
    end
    current_user.save
    redirect_to registration_interests_path
  end

  def interests_show
    @user = current_user
    authorize @user
  end

  def interests_edit
    authorize current_user
    params[:user][:interest_list].each do |interest|
      current_user.interest_list.add(interest)
    end
    current_user.save
    byebug
    redirect_to registration_interests_path
  end

  def complete
    @user = current_user
  end
end
