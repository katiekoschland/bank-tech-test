require_relative 'transaction_list'

class BankAccount

attr_reader :balance

DEFAULT_BALANCE = 0

  def initialize(initial_balance = DEFAULT_BALANCE)
    @balance = initial_balance
    @transaction_list = TransactionList.new
  end

  def deposit(amount)
    @balance += amount
    @transaction_list.create(amount, balance)
  end

  def withdraw(amount)
    fail 'Insufficient funds to complete this transaction' if amount > @balance
    @balance -= amount
    @transaction_list.create(amount, balance)
  end

  def current_balance
    "Your balance is £#{@balance}"
  end

end
