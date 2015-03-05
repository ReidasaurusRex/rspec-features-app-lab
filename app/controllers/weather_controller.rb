class WeatherController < ApplicationController
  def index 

  end

  def search 
    
    if (params[:zipcode].to_i > 50000)
      @sun = "Sun's gonna be shining!"
      @umbrella = "No umbrella needed."  
    elsif (params[:zipcode].to_i < 50001)
      @sun = "It's Gon Rain!"
      @umbrella = "Bring an umbrella."
    end
  
  end
end