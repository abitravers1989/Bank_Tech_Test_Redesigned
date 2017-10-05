require 'transactionLog.rb'

describe TransactionLog do
  let(:transaction_log) { TransactionLog.new }

  context '#initialize' do
    it 'Creates an account array which will hold all the transactions' do
      expect(transaction_log.account).to be_instance_of Array
      expect(transaction_log.account).to be_empty
    end
  end

  context '#transaction_string' do
    it 'Creates a string which reprsents a transaction' do
       expect(transaction_log.transaction_string).to be_instance_of String
    end
  end

  context '#transaction_creator' do
    it 'Stores each transaction in its own array' do
    end
  end
end
