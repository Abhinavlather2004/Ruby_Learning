# Online Store Using OOP Principles
# Create a class Product with name, price, and quantity attributes. Then:
# Create two subclasses ElectronicProduct (with a warranty_period) and ClothingProduct (with a size).
# Add methods to calculate the total price based on the quantity.
# Use polymorphism to apply a discount on all products. Electronic products get a 10% discount, and clothing products get a 5% discount.
# Demonstrate encapsulation by hiding the product’s details from the user and only providing access to relevant methods.

class Product
  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def details
    "Name: #{@name}, Price: #{@price}, Quantity: #{@quantity}"
  end

  def apply_discount
    raise NotImplementedError, "Subclasses must define `apply_discount`"
  end

  def total_price
    @price * @quantity
    end
end

class ElectronicProduct < Product
  def initialize(name, price, quantity, warranty_period)
    super(name, price, quantity)
    @warranty_period = warranty_period
  end
  def apply_discount
    discounted_price = @price * 0.90
    total_discounted_price = discounted_price * @quantity
  end
  def details
    super + ", Warranty Period: #{@warranty_period} months"
  end
end

class ClothingProduct < Product
  def initialize(name, price, quantity, size)
    super(name, price, quantity)
    @size = size
  end
  def apply_discount
    discounted_price = @price * 0.95 # 5% discount
    total_discounted_price = discounted_price * @quantity
  end
  def details
    super + ", Size: #{@size}"
  end
end

products = [
  ElectronicProduct.new("Laptop", 1000, 2, 24),
  ClothingProduct.new("T-Shirt", 20, 5, "L"),
  ElectronicProduct.new("Smartphone", 800, 1, 12),
  ClothingProduct.new("Jeans", 50, 2, "M")
]
products.each do |product|
  puts product.details
  puts "Total Price Before Discount: $#{product.total_price}"
  puts "Total Price After Discount: $#{product.apply_discount}"
  puts "-" * 40
end
