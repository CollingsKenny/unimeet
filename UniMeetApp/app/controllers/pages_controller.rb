class PagesController < ApplicationController
	before_action :authenticate_user! 
	def home
		@user = User.find(params[:id])
		@this_user = current_user
		@activity = Activity.find(6)
	end

end
