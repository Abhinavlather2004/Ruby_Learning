# Create a class Employee with the following:
# name and salary as instance variables.
# A method display_details to show the name and salary of the employee.
# Create two subclasses Manager and Developer that inherit from Employee. The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
# Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.


class Employee
  def initialize(name, salary)
    @name = name 
    @salary = salary
  end
  def display_details
    puts "name of employee is: #{@name}, salary is: #{@salary}"
  end
end

class Manager < Employee
  def give_bonus(bonus)
    @salary += bonus
    puts "salary after bonus is: #{@salary}"
  end
  
end
class Developer < Employee
  def increase_salary(percentage)
    @salary += @salary * (percentage.to_f/100)
    puts "salary after increment is: #{@salary}"
  end

end

manager = Manager.new("Abhinav", 40000)
manager.give_bonus(1000)

developer = Developer.new("Ayush", 50000)
developer.increase_salary(10)