class AkuponsController < ApplicationController
  before_filter :authenticate_user!
  #check_authorization
  load_and_authorize_resource
  # GET /akupons
  # GET /akupons.json
  def index
    # authorize! :index, Akupon
    @akupons = Akupon.where(:user_id => current_user.id)
    #   @akupons = Akupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @akupons }
    end
  end

  # GET /akupons/1
  # GET /akupons/1.json
  def show
    #          begin
    #        user.destroy
    #        flash[:notice] = "User #{user.name} deleted"
    #      rescue Exception => e
    #        flash[:notice] = e.message
    #      end
    #    
    begin
      @akupon = Akupon.where(:user_id => current_user.id, :id=>params[:id]).first
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @akupon }
      end
    rescue
      redirect_to akupons_url
    end
    
    
    #    #@akupon = Akupon.find(2)
    #    @akupon = Akupon.where(:user_id => current_user.id, :id=>params[:id]).first
    #    #@akupon = Akupon.where(:id => current_user.id).first
    #
    #    respond_to do |format|
    #      format.html # show.html.erb
    #      format.json { render json: @akupon }
    #    end
  end

  # GET /akupons/new
  # GET /akupons/new.json
  def new
    @akupon = Akupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @akupon }
    end
  end

  # GET /akupons/1/edit
  def edit
    @akupon = Akupon.find(params[:id])
  end

  # POST /akupons
  # POST /akupons.json
  def create
    @akupon = Akupon.new(params[:akupon])

    respond_to do |format|
      if @akupon.save
        format.html { redirect_to @akupon, notice: 'Akupon was successfully created.' }
        format.json { render json: @akupon, status: :created, location: @akupon }
      else
        format.html { render action: "new" }
        format.json { render json: @akupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /akupons/1
  # PUT /akupons/1.json
  def update
    @akupon = Akupon.find(params[:id])

    respond_to do |format|
      if @akupon.update_attributes(params[:akupon])
        format.html { redirect_to @akupon, notice: 'Akupon was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @akupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akupons/1
  # DELETE /akupons/1.json
  def destroy
    @akupon = Akupon.find(params[:id])
    @akupon.destroy

    respond_to do |format|
      format.html { redirect_to akupons_url }
      format.json { head :ok }
    end
  end
end
