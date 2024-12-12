# Problem Statement 5: Animal Hierarchy
# Create a base class Animal with a method make_sound. Then:
# Create two subclasses Dog and Cat, where Dog implements make_sound as "Woof" and Cat implements make_sound as "Meow".
# Write a method describe_animal in the base class that outputs a description of the animal (i.e., the animal's type and sound).
# Instantiate objects of Dog and Cat, and call their describe_animal method.


class Animal
  def make_sound
    raise NotImplementedError, "subclass must implement the method"
  end

  def describe_animal
    "#{self.class.name} says #{make_sound}"

  end
end

class Dog < Animal
  def make_sound
    return "Woof"
  end
end

class Cat < Animal
  def make_sound
    return "Meow"
  end
end

dog = Dog.new
puts dog.describe_animal

cat = Cat.new
puts cat.describe_animal