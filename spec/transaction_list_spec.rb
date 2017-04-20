require 'transaction_list'
require 'transaction'

describe TransactionList do
  let(:transaction_list) {TransactionList.new}
  let(:transaction) {double :transaction}

  describe '#initialize' do
    it 'initializes with an empty array' do
      expect(transaction_list.transactions).to be_empty
    end
  end


  describe '#transactions' do
    it 'stores a transaction' do
      transaction_list.add_transaction(transaction)
      expect(transaction_list.transaction_history).to include(transaction)
    end
  end
end
