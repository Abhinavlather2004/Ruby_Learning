# Vehicle Rental System
# Design an abstract class Vehicle with the following:
# An abstract method calculate_rent to compute the rental cost.
# Two subclasses Car and Bike that implement the calculate_rent method. For example, Car charges $20/day, and Bike charges $10/day.
# Create instances of both subclasses and calculate their rental charges based on the number of days.

class Vehicle
  def calculate_rent
    raise NotImplementedError, "subclass must implement this method"
  end
end

class Car < Vehicle
  def initialize(days)
    @days = days
  end

  def calculate_rent
    total_rent_of_car = 20 * @days
    puts "Car rental cost for #{@days} days is: $#{total_rent_of_car}"
  end
end

class Bike < Vehicle
  def initialize(days)
    @days = days
  end

  def calculate_rent
    total_rent_of_bike = 10 * @days
    puts "Bike rental cost for #{@days} days is: $#{total_rent_of_bike}"
  end
end

car = Car.new(20)
puts car.calculate_rent
bike = Bike.new(3)
puts bike.calculate_rent
