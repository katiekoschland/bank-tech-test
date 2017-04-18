require 'bank_account'

describe BankAccount do
  let(:bank_account) {BankAccount.new}
  default_balance = BankAccount::DEFAULT_BALANCE

describe '#initialize' do
  it 'creates a new bank account with a starting balance of zero' do
    expect(bank_account.balance).to eq(default_balance)
  end
end

describe '#deposit' do
  it 'increases the account\'s balance by the amount of the deposit' do
    expect{ bank_account.deposit(10) }.to change{ bank_account.balance }.by 10
  end
end

describe '#withdrawal' do
  before do
    bank_account.deposit(10)
  end

  it 'decreases account balance by the amount of the withdrawal' do
    expect{ bank_account.withdrawal(5) }.to change{ bank_account.balance }.by -5
  end

  it 'raises an error if the withdrawal amount exceeds the user\'s current balance' do
    expect{ bank_account.withdrawal(15) }.to raise_error('Insufficient funds to complete this transaction')
  end
end

describe '#current_balance' do
  before do
    bank_account.deposit(100)
  end

  it 'prints the user\s current balance' do
    expect(bank_account.current_balance).to eq("Your balance is £100")
  end
end
end
