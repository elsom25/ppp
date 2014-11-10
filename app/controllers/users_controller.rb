class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @users = policy_scope(User)
    authorize @users
    respond_with @users
  end

  def show
    respond_with @user
  end

  def new
    @user = User.new
    authorize @user

    respond_with @user
  end

  def update
    @user.update(user_params)
    respond_with @user
  end

  def destroy
    @user.destroy
    respond_with @user
  end

protected

  def set_user
    @user = User.find params[:id]
    authorize @user
  end

  def user_params
    params.require(:user)
  end
end
