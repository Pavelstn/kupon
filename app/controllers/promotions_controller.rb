class PromotionsController < ApplicationController
  # GET /promotions
  # GET /promotions.json
  def index
    @promotions = Promotion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promotions }
    end
  end

  # GET /promotions/1
  # GET /promotions/1.json
  def show
    @promotion = Promotion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @promotion }
    end
  end

  # GET /promotions/new
  # GET /promotions/new.json
  def new
    @promotion = Promotion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @promotion }
    end
  end

  # GET /promotions/1/edit
  def edit
    @promotion = Promotion.find(params[:id])
  #  @categories = Category.all
  end

  # POST /promotions
  # POST /promotions.json
  def create
    @promotion = Promotion.new(params[:promotion])

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to @promotion, notice: 'Promotion was successfully created.' }
        format.json { render json: @promotion, status: :created, location: @promotion }
      else
        format.html { render action: "new" }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /promotions/1
  # PUT /promotions/1.json
  def update
    @promotion = Promotion.find(params[:id])

    respond_to do |format|
      if @promotion.update_attributes(params[:promotion])
        format.html { redirect_to @promotion, notice: 'Promotion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1
  # DELETE /promotions/1.json
  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy

    respond_to do |format|
      format.html { redirect_to promotions_url }
      format.json { head :ok }
    end
  end
  
  def buyit
    @akupon = Akupon.new
    @akupon.promotion_id=params[:id]
    @akupon.user_id=current_user.id
    @akupon.purchase= Date.today
    @akupon.unique_code="safdfjioewroiwyr"
    @akupon.is_canceled= false
    @akupon.is_delete= false
    @akupon.save
  #  redirect_to promotion_path(@post)
  redirect_to akupon_path(@akupon)
  end
end
