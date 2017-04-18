class BankAccount

attr_reader :balance

DEFAULT_BALANCE = 0

  def initialize(initial_balance = DEFAULT_BALANCE)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    fail 'Insufficient funds to complete this transaction' if amount > @balance
    @balance -= amount
  end

  def current_balance
    "Your balance is £#{@balance}"
  end

end
