require 'transaction'

class TransactionList

  attr_reader :transactions

  def initialize(transaction_class = Transaction)
    @transactions = []
    @transaction_class = transaction_class
  end

  def transaction_history
    @transactions.dup
  end


  def create(amount, balance)
    store(@transaction_class.new(amount,balance))
  end

  private

  def store(transaction)
    @transactions  << transaction
  end

end
