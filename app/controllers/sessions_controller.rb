class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		session[:user_id] = user.id
		if params[:session][:password] == current_user.password
			flash[:notice] = "Logged in successfully"
			redirect_to "/users" 
		else
			flash.now[:alert] = "There was some problem in your login details"
			render "new"
		end
	end
end
