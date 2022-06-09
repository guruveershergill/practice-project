class UsersController < ApplicationController

def new
		@user = User.new
	end

	def create
		@user = User.new(user_param)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "Welcome to Alpha blog #{@user.username}, you have successfully signed up"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def user_param
		params.require(:user).permit(:username, :email, :password)
	end
end
