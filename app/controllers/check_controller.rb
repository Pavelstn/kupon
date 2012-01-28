class CheckController < ApplicationController
  before_filter :authenticate_user!
 
  load_and_authorize_resource  :class => CheckController
  
  def index
    @code= ""
    if request.post?
      @u_code =params[:u_code]

      code= @u_code[:code]
      @code= code
      
      begin
        @akupon = Akupon.where(:unique_code=> code).first
        flash[:notice] = @akupon.promotion_id
      rescue
        @akupon= nil
      end

    end
  
  end

end
