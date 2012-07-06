class HomeController < ApplicationController
  def index
  end

  def form
  	puts "got here"
  	@invite = Invite.new
  	@invite.email = params[:email]
  	@invite.save

    render json: { :yay => "woo" }
  end
end
