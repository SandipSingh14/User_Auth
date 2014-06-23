class UsersController < ApplicationController  
<<<<<<< HEAD
  def new
=======
before_filter :save_login_state, :only => [:new, :create]
 
 def new
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
    @user = User.new 
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end
<<<<<<< HEAD
before_filter :save_login_state, :only => [:new, :create]

=======
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
end
