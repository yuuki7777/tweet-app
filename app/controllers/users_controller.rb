class UsersController < ApplicationController
  def index
  end

  def new
     @user= User.new
  end

  def create
    @user = User.new(name: params[:name], 
                     email: params[:email],
                     password: params[:password])
    
    if @user.save
      redirect_to("/posts/index")
      session[:user_id]= @user.id
    else
      render("users/new")
    end
  end

  def login_form
    
    
  end

  def login
    @user=User.find_by(email: params[:email],password: params[:password])

    if @user
      redirect_to("/posts/index")
      session[:user_id] = @user.id
    else
      render("users/login_form")
      @name = params[:name]
      @email = params[:email]
      @password = params[:password]
    end

  end

  def logout
    session[:user_id]= nil
    redirect_to("/login")
  end

end
