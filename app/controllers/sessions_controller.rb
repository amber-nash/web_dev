class SessionsController < ApplicationController

  def new
    render 'root'
  end

  def create
    @user = User.find_by(name: params[:name])

    if @user && @user.authenticate(params[:password])
      login(@user)
      redirect_to "/"
    else
      @errors = "Not able to create that report"
      render :new
    end
  end

  def delete
    logout

    redirect_to root_path
  end

end
