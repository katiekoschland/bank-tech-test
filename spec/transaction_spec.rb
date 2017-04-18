require 'transaction'

describe Transaction do
let(:transaction){Transaction.new}
it 'can make a new transaction' do
  expect(transaction).to be_instance_of(Transaction)
end
end
