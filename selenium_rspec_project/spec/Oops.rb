class Vehicle
  def initialize(vehicle_name,vehicle_color)
    @vehicle_name =vehicle_name
    @vehicle_color=vehicle_color
  end
   
  def method
    puts "private method in vehicle class"
  end
end 

class Car < Vehicle

  public 
  def car_details
    greeting
    puts "Please find below for your car details : "
    puts @vehicle_name
    puts @vehicle_color
  end

  private
  def greeting
    puts "Hello user"
  end 
end

car1 =Car.new("Amaze","Red")
car1.car_details
car1.method
