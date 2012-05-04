class LuggagesController < ApplicationController
  
  def luggages
    if current_passenger.admin?
      luggages = Luggage.all
    else
      luggages = current_passenger.luggages
    end
  end
  
  # GET /luggages
  # GET /luggages.json
  def index
    @luggages = luggages

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @luggages }
    end
  end

  # GET /luggages/1
  # GET /luggages/1.json
  def show
    @luggage = current_passenger.luggages.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @luggage }
    end
  end

  # GET /luggages/new
  # GET /luggages/new.json
  def new
    @luggage = current_passenger.luggages.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @luggage }
    end
  end

  # GET /luggages/1/edit
  def edit
    @luggage = current_passenger.luggages.find(params[:id])
  end

  # POST /luggages
  # POST /luggages.json
  def create
    @luggage = current_passenger.luggages.build(params[:luggage])

    respond_to do |format|
      if @luggage.save
        format.html { redirect_to @luggage, notice: 'Luggage was successfully created.' }
        format.json { render json: @luggage, status: :created, location: @luggage }
      else
        format.html { render action: "new" }
        format.json { render json: @luggage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /luggages/1
  # PUT /luggages/1.json
  def update
    @luggage = current_passenger.luggages.find(params[:id])

    respond_to do |format|
      if @luggage.update_attributes(params[:luggage])
        format.html { redirect_to @luggage, notice: 'Luggage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @luggage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luggages/1
  # DELETE /luggages/1.json
  def destroy
    @luggage = current_passenger.luggages.find(params[:id])
    @luggage.destroy

    respond_to do |format|
      format.html { redirect_to luggages_url }
      format.json { head :no_content }
    end
  end
end
