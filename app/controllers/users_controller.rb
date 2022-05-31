class UsersController < ApplicationController
  
  before_action :set_user, only: %i[ show ]

  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def tasks
    @user = User.find_by!(username: params.fetch(:username))
  end

  def followers
    @user = User.find_by!(username: params.fetch(:username))
  end

  def following
    @user = User.find_by!(username: params.fetch(:username))
  end

  def set_user
    if params[:username]
      @user = User.find_by!(username: params.fetch(:username))
    else
      @user = current_user
    end
  end
  
end