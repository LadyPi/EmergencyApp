class AboutController < ApplicationController

	# 'about#index'
	def index
	  # @title = Title.all	
	  render :index_about
	end
end
