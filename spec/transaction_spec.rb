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

  describe '#amount' do
    let(:transaction){ Transaction.new(0, "14-01-2014") }
    it 'raises an error if transaction amount is zero' do
      expect{transaction}.to raise_error("Transaction amount cannot be zero")
    end
  end

  describe '#NaN'do
    it 'raises an error if the transaction amount is NaN' do
      expect{ Transaction.new( 'test' ,"14-01-2014") }.to raise_error("Transaction amount must be a number")
    end
  end
