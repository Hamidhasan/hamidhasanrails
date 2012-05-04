class FlightsController < ApplicationController
  
  def flights
    if current_user.admin?
      flights = Flight.all
    else
      flights = current_user.flights
    end
  end
  
  # GET /flights
  # GET /flights.json
  def index
    @flights = flights

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flights }
    end
  end

  # GET /flights/1
  # GET /flights/1.json
  def show
    @flight = current_user.flights.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flight }
    end
  end

  # GET /flights/new
  # GET /flights/new.json
  def new
    @flight = current_user.flights.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flight }
    end
  end

  # GET /flights/1/edit
  def edit
    @flight = current_user.flights.find(params[:id])
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = current_user.flights.build(params[:flight])

    respond_to do |format|
      if @flight.save
        Notifications.new_flight(@flight).deliver
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        format.json { render json: @flight, status: :created, location: @flight }
      else
        format.html { render action: "new" }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flights/1
  # PUT /flights/1.json
  def update
    @flight = Flight.find(params[:id])

    respond_to do |format|
      if @flight.update_attributes(params[:flight])
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to flights_url }
      format.json { head :no_content }
    end
  end
end
