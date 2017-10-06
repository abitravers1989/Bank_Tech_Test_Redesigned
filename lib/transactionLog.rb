# This class creates an account array which holds all the transaction arrays

class TransactionLog
  attr_accessor :account_transactions

  def initialize
    @account_transactions = []
  end

  def createing_transaction_array(date, crdit, debit, balance)
    @account_transactions.push([date, crdit, debit, balance])
  end
end

# trans = TransactionLog.new
# trans.createing_transaction_array("05/10/2017", 10, 0, 10)
