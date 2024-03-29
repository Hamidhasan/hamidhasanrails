class PassengersController < ApplicationController
  def passengers
    if current_passenger.admin?
      Passenger
    else
      Household.find(current_passenger.household_id).passenger
    end
  end
  
  # GET /passengers
  # GET /passengers.json
  def index
    if current_passenger.household_id == nil
      redirect_to new_household_path
    else
      @passengers = passengers.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @passengers }
      end    
    end
  end

  # GET /passengers/1
  # GET /passengers/1.json
  def show
    @passenger = passengers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @passenger }
    end
  end

  # GET /passengers/new
  # GET /passengers/new.json
  def new
    @passenger = Passenger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @passenger }
    end
  end

  # GET /passengers/1/edit
  def edit
    @passenger = Passenger.find(params[:id])
  end

  # POST /passengers
  # POST /passengers.json
  def create
    @passenger = Passenger.new(params[:passenger])

    respond_to do |format|
      if @passenger.save
        @passenger.household_id = current_passenger.household_id
        format.html { redirect_to @passenger, notice: 'Passenger was successfully created.' }
        format.json { render json: @passenger, status: :created, location: @passenger }
      else
        format.html { render action: "new" }
        format.json { render json: @passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /passengers/1
  # PUT /passengers/1.json
  def update
    @passenger = passengers.find(params[:id])

    respond_to do |format|
      if @passenger.update_attributes(params[:passenger])
        format.html { redirect_to @passenger, notice: 'Passenger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passengers/1
  # DELETE /passengers/1.json
  def destroy
    @passenger = passengers.find(params[:id])
    @passenger.destroy

    respond_to do |format|
      format.html { redirect_to passengers_url }
      format.json { head :no_content }
    end
  end
end
