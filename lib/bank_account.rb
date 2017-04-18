class BankAccount

attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    fail 'Insufficient funds to complete this transaction' if balance - amount < 0
    @balance -= amount
  end

end
