class SessionsController < ApplicationController
  def new
  end

  # def show
  # end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    return render action: 'new' unless @user

    # logged in, hooray

    session[:user_id] = @user.id
    redirect_to expense_catergories_path
  end
end
