class SessionController < ApplicationController
	def new
	end

	def create
	username = User.find_by(username: params[:session][:username].downcase) 
	if username && username.authenticate.params[:session][:password
		session[:user_id] = username.id
		flash[:notice] = "Logged in successfully"
		redirect_to user
	else
			flash.now[:alert] = "There was some problem in your login details"
			render 'new'	
	end
end
