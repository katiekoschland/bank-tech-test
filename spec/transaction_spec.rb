require 'transaction'

describe Transaction do
  let(:transaction){Transaction.new(20, "10/01/2012")}

  describe 'initialize' do
    it 'stores the amount of the transaction' do
      expect(transaction.amount).to eq(20)
    end

    it 'stores the date of the transaction' do
      expect(transaction.date).to eq("10/01/2012")
    end
  end

end
