class CcsController < ApplicationController
  before_filter :check_logged_in, :only => [:edit, :update, :destroy]
  def new
    @cc = Cc.new
  end
  
  def create
    @cc = Cc.new(params[:cc])
    @cc.save
    redirect_to "/ccs/#{@cc.id}"
  end

  def show
    @cc = Cc.find(params[:id])
  end
  
  def index
    @ccs = Cc.find(:all)
  end
  
  def edit
    @cc = Cc.find(params[:id])
  end
  
  def update
    @cc = Cc.find(params[:id])
    @cc.update_attributes(params[:cc])
    redirect_to "/ccs/#{@cc.id}"
  end
  def destroy
    @cc = Cc.find(params[:id])
    @cc.destroy
    redirect_to '/ccs/'
  end
  def find
	@ccs = Cc.find(:all,:conditions=>["name = ? OR tag = ?",params[:search_string], params[:search_string]])
  end
private 
  def check_logged_in
    authenticate_or_request_with_http_basic("Ccs") do |username, password|
      username == "admin" && password == "123"
    end
  end 
end
