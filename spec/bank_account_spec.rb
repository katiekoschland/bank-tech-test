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
