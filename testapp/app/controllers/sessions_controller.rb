class SessionsController < ApplicationController
  def new
  end

  def create
  	admin = Admin.find_by(username: params[:session][:username].downcase)
  	if admin && admin.authenticate(params[:session][:password])
  		log_in admin
  		redirect_to "http://0.0.0.0:3000/"
  	else
  		flash.now[:danger] = 'Invalid username/password combo'
  		render 'new'
  	end
  end

  def destroy
  end
end
