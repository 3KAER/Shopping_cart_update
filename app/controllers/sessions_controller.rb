class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:email].downcase)
    
    if user && user.authenticate(params[:password])
      log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        
        
        redirect_to user
        # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not
      quite right!
      render 'new', status: :unprocessable_entity
    end
  end
  def destroy
    log_out 
   redirect_to root_path
  end
  end

