class Transaction

  attr_reader :amount, :date, :transaction_type

  def initialize(amount, date = Time.new)
    @amount = amount
    @date = date
    type_of_transaction
    transaction_amount(amount)
  end

  def type_of_transaction
    @amount > 0 ? @transaction_type = :credit : @transaction_type = :debit
  end

  def transaction_amount(amount)
    fail "Transaction amount cannot be zero" if @amount == 0
    @amount = amount
  end


end
