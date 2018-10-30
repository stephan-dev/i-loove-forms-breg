class UserController < ApplicationController
	 
	def index
		@user = User.all
	end

	def new
		@user = User.new

	end

	def create

    if params[:user]
      user = params[:user]
    else
      user = params
    end

		User.create(username: user[:username], email: user[:email], bio: user[:bio])
		
	end
	
end