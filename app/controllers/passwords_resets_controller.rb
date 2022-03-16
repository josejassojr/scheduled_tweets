class PasswordsResetsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(email: params[:email])

		if @user.present? 
			#send email 
			PasswordMailer.with(user: @user).reset.deliver_now
		end

		redirect_to root_path, notice: "If an account with that email is found, a link to reset your password has been sent to the email."
	end

	def edit
	end

end