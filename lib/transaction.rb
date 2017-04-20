class Transaction

  attr_reader :amount, :date, :transaction_type

  def initialize(amount, date = Time.new)
    @amount = amount
    @date = date
    transaction_amount(amount)
    type_of_transaction
  end

  def transaction_amount(amount)
    fail "Transaction amount cannot be zero" if @amount == 0
    fail "Transaction amount must be a number" unless amount.class == Fixnum || amount.class == Float
    @amount = amount
  end

  def type_of_transaction
    @amount > 0 ? @transaction_type = :credit : @transaction_type = :debit
  end

end
