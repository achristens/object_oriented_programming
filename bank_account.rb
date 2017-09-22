# Create a BankAccount class
class BankAccount
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  # You can also initialize with set values:
  # def initialize
  #   @balance = 0
  #   @interest_rate = 1.05
  # end

  def deposit(amount)
    @balance = amount + @balance
    "New balance is #{@balance}"
  end

  def withdraw(amount)
    @balance = @balance - amount
    "New balance is #{@balance}"
  end
end

new_account = BankAccount.new(200, 1.05)

puts new_account.deposit(1000)
puts new_account.withdraw(450)
