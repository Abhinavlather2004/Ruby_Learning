# Problem Statement 1: Bank Account Management System
# Create a class BankAccount that encapsulates the details of a bank account. The class should have the following features:
# An instance variable balance (private) to store the current balance.
# Methods to deposit(amount) and withdraw(amount) with proper validation to ensure the balance doesn't go negative.
# A method display_balance that returns the current balance (public).
# Create an object of BankAccount, perform some deposit and withdrawal operations, and display the balance.


class BankAccount
  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end

  def checkBalance
    @balance
  end
  def deposit(amount)
    @balance += amount
    puts "#{amount} deposited successfully. New balance is: #{@balance}"
  end
  def withdraw(amount)
    if amount > @balance
      puts "Insufficient balance."
    else
      @balance -= amount
      puts "Balance after withdrawal is: #{@balance}"
    end
  end
end

account = BankAccount.new("Abhinav", 1000)
puts account.checkBalance
account.deposit(1000)
account.withdraw(200)
account.checkBalance