require 'transaction'

describe Transaction do
  let(:transaction){ Transaction.new(1000, "10/01/2012") }

  describe 'initialize' do
    it 'the amount of the transaction' do
      expect(transaction.amount).to eq(1000)
    end

    it 'the date of the transaction' do
      expect(transaction.date).to eq("10/01/2012")
    end
  end
end

  describe '#credit' do
    let(:transaction){ Transaction.new(2000, "13/01/2012") }
    it 'a positive amount will be defined as a credit ' do
      expect(transaction.transaction_type).to be(:credit)
    end
  end

  describe '#debit' do
    let(:transaction){ Transaction.new(-500, "14-01-2012") }
    it 'a negative amount will be defined as a debit ' do
      expect(transaction.transaction_type).to be(:debit)
    end
  end
