class LuggagesController < ApplicationController
  # GET /luggages
  # GET /luggages.json
  def index
    @luggages = Luggage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @luggages }
    end
  end

  # GET /luggages/1
  # GET /luggages/1.json
  def show
    @luggage = Luggage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @luggage }
    end
  end

  # GET /luggages/new
  # GET /luggages/new.json
  def new
    @luggage = Luggage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @luggage }
    end
  end

  # GET /luggages/1/edit
  def edit
    @luggage = Luggage.find(params[:id])
  end

  # POST /luggages
  # POST /luggages.json
  def create
    @luggage = Luggage.new(params[:luggage])

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
    @luggage = Luggage.find(params[:id])

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
    @luggage = Luggage.find(params[:id])
    @luggage.destroy

    respond_to do |format|
      format.html { redirect_to luggages_url }
      format.json { head :no_content }
    end
  end
end
