class MainController < ApplicationController
  def index
    @promotions = Promotion.all
    @categories = Category.all
  #  @regions = Region.all
#render :template => 'main/new'
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promotions }
    end
    
  end

end
