require 'transactionLog.rb'

describe TransactionLog do
  let(:transaction_log) { TransactionLog.new }

  context '#initialize' do
    it 'Creates an account array which will hold all the transactions' do
      expect(transaction_log.account_transactions).to be_instance_of Array
      expect(transaction_log.account_transactions).to be_empty
    end
  end

  context '#createing_transaction_array' do
    it 'Creates a string which reprsents a transaction' do
       transaction_log.createing_transaction_array("05/10/2017", 10, 0, 10)
       expect(transaction_log.account_transactions).to_not be_empty
    end
  end

end
