class LinksController < ApplicationController
  before_filter :confirm_logged_in

  include Embed

  def index
    @links = Link.where(recipient_id: current_user.id)
  end

  def create
    @link = Link.new
    @link.sender = current_user
    @link.recipient = User.find(params[:recipient_id])
    @link.url = params[:url]
    @link.save
    redirect_to :action => 'index'
    flash[:notice] = "Success!"
  end

end
