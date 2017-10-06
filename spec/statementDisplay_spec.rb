require 'statementDisplay'

describe StatementDisplay do
  let(:statement) { StatementDisplay.new([['05/10/2017', 10, 0, 10], ['05/10/2017', 10, 0, 10]]) }

  context '#initialize' do
    it 'Takes an array of account transactions' do
      expect(statement.account_transactions).to be_instance_of Array
    end
  end

  context '#statment_header' do
    it 'prints the statement header' do
      expect(statement.statment_header).to be_instance_of String
    end
  end

  context '#transaction_information' do
    it 'formats transaction information into a string' do
      expect { statement.transaction_information }.to output("05/10/2017 || 10 || || 10\n05/10/2017 || 10 || || 10\n").to_stdout
    end
  end
end
