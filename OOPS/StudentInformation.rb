# Problem Statement 2: Student Information System
# Design a class Student that stores the name, age, and grades of a student. Implement the following:
# Use attr_accessor for name and age, and attr_reader for grades (making it read-only).
# The class should have a method add_grade(grade) that adds a grade to the student's grades array.
# Write a method calculate_average to return the average grade of the student.
# Ensure that the grades variable is encapsulated properly, and students can only add grades through the add_grade method.

class Student
  attr_accessor :name, :age
  attr_reader :grades

  def initialize(name, age)
    @name = name
    @age = age
    @grades = []
  end

  def add_grade(grade)
    if grade.between?(0,100)
      @grades << grade
      puts "Grade #{grade} added successfully"
    else
      puts "invalid grade"
    end
  end

  def calculate_average
    return 0 if @grades.empty?
    @grades.sum / @grades.size.to_f
  end
end

student = Student.new("Abhinav", 20)
puts "Name: #{student.name}, Age: #{student.age}"
student.add_grade(50)
student.add_grade(70)
student.add_grade(60)

puts "Name: #{student.name}, Age: #{student.age}"
puts "Grades: #{student.grades}"
puts "Average grades: #{student.calculate_average}"

# Student = Studentt.new("Bob",30)
# # Student.name = "bob"
# # Student.age = 30
# puts "Updated Name: #{Student.name}, updated age: #{Student.age}"
# # puts "Name: #{Student.name}, Age: #{Student.age}"
# Student.add_grade(10)
# Student.add_grade(10)
# Student.add_grade(10)

# puts "Name: #{Student.name}, Age: #{Student.age}"
# puts "Grades: #{Student.grades}"
# puts "Average grades: #{Student.calculate_average}"

student = Student.new("Ayush", 25)
puts "Name: #{student.name}, Age: #{student.age}"
student.add_grade(10)
student.add_grade(10)
student.add_grade(10)

puts "Name: #{student.name}, Age: #{student.age}"
puts "Grades: #{student.grades}"
puts "Average grades: #{student.calculate_average}"

