class SessionsController < ApplicationController
  def new
  end

  def create
	  user = User.find_by(email: params[:session][:email])
	  if user
		  if user.password == params[:session][:password]
			  log_in user
			  redirect_to home_path and return
		  else
			  flash.now[:danger] = 'Contrasena invalida'
			  render 'new'
		  end
	  else

	  	  flash.now[:danger] = 'Usario invalido'
	  	  render 'new'
	  end
  end

  def destroy
	  log_out
	  redirect_to root_url
  end
end
