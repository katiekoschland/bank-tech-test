require 'transaction_list'

describe TransactionList do
  let(:transaction_list) {TransactionList.new}

  describe '#initialize' do
    it 'initializes with an empty array' do
      expect(transaction_list.transactions).to be_empty
    end
  end

end
