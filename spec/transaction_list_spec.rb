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
      expect(transaction_list.transactions).to be_empty
    end
  end

  describe '#transactions' do

    it 'stores a transactions amount' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transactions.keys[0].amount).to eq(50)
    end

    it 'stores the ccurrent balance' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transactions.values[0]).to eq(1000)
    end

    it 'creates a transaction' do
      transaction_list.create(50, 1000)
      expect(transaction_list.transactions).to include(transaction)
    end
  end
end
