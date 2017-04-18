require 'bank_account'

describe BankAccount do
  let(:bank_account) {BankAccount.new(0)}

  it 'can be instantiated' do
    expect(bank_account).to be_instance_of BankAccount
  end

  it 'creates a new bank account with a starting balance of zero' do
    expect(bank_account.balance).to eq(0)
  end
end


describe '#deposit' do
  let(:bank_account) {BankAccount.new(10)}

  it 'increases account balance by the value of the deposit' do
    expect{ bank_account.deposit(10) }.to change{ bank_account.balance }.by 10
  end
end

describe '#withdrawal' do
  let(:bank_account) {BankAccount.new(10)}

  it 'decreases account balance by the value of the withdrawal' do
    expect{ bank_account.withdrawal(5) }.to change{ bank_account.balance }.by -5
  end

  it 'decreases account balance by the value of the withdrawal' do
    expect{ bank_account.withdrawal(15) }.to raise_error('Insufficient funds to complete this transaction')
  end
end
