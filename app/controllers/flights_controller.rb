class FlightsController < ApplicationController
  # GET /flights
  # GET /flights.xml
  def index
    @flights = Flight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @flights }
    end
  end

  # GET /flights/1
  # GET /flights/1.xml
  def show
    @flight = Flight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @flight }
    end
  end

  # GET /flights/new
  # GET /flights/new.xml
  def new
    @flight = Flight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @flight }
    end
  end

  # GET /flights/1/edit
  def edit
    @flight = Flight.find(params[:id])
  end

  # POST /flights
  # POST /flights.xml
  def create
    @flight = Flight.new(params[:flight])

    if @flight.save
      redirect_to "/flights"
    else
      render :template => "flights/new"
    end

#    respond_to do |format|
#      if @flight.save
#        format.html { redirect_to(@flight, :notice => 'Flight was successfully created.') }
#        redirect_to "/flight/{@flight.id}"
#        format.xml  { render :xml => @flight, :status => :created, :location => @flight }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @flight.errors, :status => :unprocessable_entity }
#      end
#    end
  end

  # PUT /flights/1
  # PUT /flights/1.xml
  def update
    @flight = Flight.find(params[:id])

    respond_to do |format|
      if @flight.update_attributes(params[:flight])
        format.html { redirect_to(@flight, :notice => 'Flight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @flight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.xml
  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to(flights_url) }
      format.xml  { head :ok }
    end
  end
end