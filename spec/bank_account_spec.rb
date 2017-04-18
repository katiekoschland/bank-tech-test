require 'bank_account'

describe BankAccount do
  subject(:bank_account) {BankAccount.new(0)}
  it 'Creates a new bank account with a balance of zero' do
    expect(bank_account.balance).to eq(0)
  end
end
