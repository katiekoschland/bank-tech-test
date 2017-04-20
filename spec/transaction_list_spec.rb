require 'transaction_list'
require 'transaction'

describe TransactionList do
  let(:transaction) {double :transaction}
  let(:transaction_class) {double(:transaction_class, new: transaction)}
  let(:transaction_list) {TransactionList.new(transaction_class)}

  before do
    allow(transaction).to receive(:amount){50}
    allow(transaction).to receive(:balance){1000}
  end

  describe '#initialize' do
    it 'initializes with an empty array' do
      expect(transaction_list.transaction_history).to be_empty
    end
  end

  describe '#transactions' do

    it 'stores a transactions amount' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transaction_history[0].amount).to eq(50)
    end

    it 'stores the ccurrent balance' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transaction_history[0].balance).to eq(1000)
    end

    it 'creates a transaction' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transaction_history).to include(transaction)
    end
  end
end
