class UserController < ApplicationController

  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

end
