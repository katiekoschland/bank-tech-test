require 'transaction'

describe Transaction do
  let(:transaction){Transaction.new(20)}

  describe 'initialize' do
    it 'the transaction has an amount' do
      expect(transaction.amount).to eq(20)
    end
  end

end
