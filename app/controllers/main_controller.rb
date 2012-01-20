class MainController < ApplicationController
  def index
    @promotions = Promotion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promotions }
    end
  end

end
