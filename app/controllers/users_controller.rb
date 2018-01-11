class UsersController < ApplicationController

 before_action :find_user, only: [:show, :edit, :update, :destroy]

    def new
      @user = User.new
      render 'root'
    end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      redirect_to root_path
    end


private

  def user_params
    params.require(:user).permit(:name, :email, :text)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
