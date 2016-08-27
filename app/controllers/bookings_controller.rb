class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]
  
  def index
    @bookings=  Booking.all
  end
  
  def new
    @booking = Booking.new
    @booking.bicycle_id = params[:bike_id]
  end
  
  def create
    
    bicycle = Bicycle.find(booking_params[:bicycle_id])
    user_id = current_user.id
    days = booking_params[:days]
    
    if (bicycle.nil? or days.nil?)
      flash[:alert] = "Error creating the booking"
      redirect_to booking_url
    else
      
      @booking =  Booking.new ({:user_id=> user_id, :bicycle_id=>bicycle.id, :final_price=> booking_params[:final_price]})
      @booking.start = Time.now
      @booking.end = Time.now + days.to_i * 86400
      
      respond_to do |format|
        if @booking.save
          format.html { redirect_to bicycles_url, notice: 'Booking was successfully created.' }
          format.json { render :show, status: :created, location: @booking }
        else
          format.html { render :new }
          format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    end
  end
  
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html {redirect_to bookings_url}
      format.json {head :no_content}
    end
    
  end
  
  def set_booking
    @booking = Booking.find(params[:id])
  end
  
  def booking_params
    params.require(:booking).permit( :bicycle_id, :final_price, :days)
  end
  
end
