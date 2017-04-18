require 'transaction'

describe Transaction do
let(:transaction) {Transaction.new}

it 'can be instantiated' do
 expect(transaction).to be_instance_of(Transaction)
end

end
