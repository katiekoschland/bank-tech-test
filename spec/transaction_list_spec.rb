require 'transaction_list'
require 'transaction'

describe TransactionList do
  let(:transaction) {double :transaction}
  let(:transaction_class) {double(:transaction_class, new: transaction)}
  let(:transaction_list) {TransactionList.new(transaction_class)}

  describe '#initialize' do
    it 'initializes with an empty array' do
      expect(transaction_list.transaction_history).to be_empty
    end
  end

  describe '#transactions' do
    it 'stores a transaction' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transaction_history).to include(transaction)
    end
  end
end
