class SessionsController < ApplicationController
<<<<<<< HEAD
=======

>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
  def login
    #Login Form
  end
  def login_attempt
<<<<<<< HEAD
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"	
    end
  end
  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'home')
  else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"	
    end
  end
before_filter :authenticate_user, :only => [:home, :profile, :setting]
before_filter :save_login_state, :only => [:login, :login_attempt]
def logout
  session[:user_id] = nil
  redirect_to :action => 'login'
end
=======
    before_filter :authenticate_user, :only => [:home, :profile, :setting]
    before_filter :save_login_state, :only => [:login, :login_attempt]
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
	session[:user_id] = authorized_user.id
	flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
	redirect_to(:action => 'home')
  else
	flash[:notice] = "Invalid Username or Password"
        flash[:color]= "invalid"
        render "login"	  
  
  end  
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => 'login'
  end

  def home
  end

  def profile
  end

  def setting
  end
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
end
