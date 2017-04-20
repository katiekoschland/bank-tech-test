require 'transaction'

class TransactionList

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def transaction_history
    @transactions.dup
  end


  def add_transaction(transaction)
    @transactions << transaction
  end

end
