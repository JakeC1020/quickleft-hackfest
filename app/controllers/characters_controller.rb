class CharactersController < ApplicationController

	before_action :authenticate_user!, only: [:new]
	def new
		@character = Character.new
	end

	def create
		@character = Character.new
		@character.user = current_user

			if @character.save
			redirect_to root_url
			else
			render 'new'
			end
	end

	private
		def character_params
			params.require(:character).permit(:name, :experience, :gold)			
		end

end
