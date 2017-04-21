require 'print_statement'

describe PrintStatement do
  let(:statement) { PrintStatement.new}
  it 'has the correct header format' do
    expect(statement.print_header).to include("date       || credit  || debit  || balance")
  end


end
