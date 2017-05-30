class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find_by(:id => params[:user_id])
    @photo = @user.photos

    render("users/show.html.erb")
  end


  def my_likes
    @user = current_user
    @likes = @user.likes

    render("users/my_likes.html.erb")
  end


end
