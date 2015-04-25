class SessionsController < ApplicationController
	def new
	end

	def create
		user =User.authenticate(params[:session][:email], params[:session][:password])

		if user.nil?
			flash.now[:error] = "Invalid email/password combination."
			render :new
		else
			sing_in user
			redirect_to user
			# redirect_to user
	    end

	end

    def destroy
    	sing_out
    	redirect_to signin_path
    end
    	
    end