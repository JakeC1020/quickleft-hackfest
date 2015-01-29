class HomeController < ApplicationController
	before_action :authenticate_user!, only: [:index]
  def index
  	@character = current_user.character
  end
end
