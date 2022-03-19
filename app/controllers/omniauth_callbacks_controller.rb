class OmniauthCallbacksController < ApplicationController
	# before_action :find_model
	def twitter
		Rails.logger.info auth
		twitter_account = Current.user.twitter_accounts.where(username: auth.info.nickname).first_or_initialize
		twitter_account.update(
			name: auth.info.name,
			username: auth.info.nickname,
			image: auth.info.image,
			token: auth.credentials.token,
			secret: auth.credentials.secret,
		)

		redirect_to twitter_accounts_path, notice: "Successfully connected your account!"
	end

	def auth
		request.env['omniauth.auth']
	end

	# private
	# def find_model
	# 	@model = OmniauthCallbacks.find(params[:id]) if params[:id]
	# end
end
