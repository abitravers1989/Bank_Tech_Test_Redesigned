require 'bankController.rb'
require 'balance.rb'
require 'credit.rb'
require 'dateNow.rb'
require 'debit.rb'
require 'output.rb'
require 'StatementDisplay.rb'
require 'output.rb'

# This test is intended as more of a feature test since this class only calls on other classes instead of doing anything itself
describe BankController do
  let (:bank_controller) { BankController.new }

  context '#withdrawal_process' do
    it 'Calls on the other classes which are used in the withdrawal process' do
      debit = Debit.new(10)
      date = DateNow.new
      balance = Balance.new
      balance = balance.calculating_balance(debit.debit_amount)
      credit = "||"
      transaction = TransactionLog.new
      transaction_log = transaction.createing_transaction_array(date.createdate, debit.debit_amount, credit, balance)
      p transaction_log
    end
  end

  context '#deposit_process' do
    it 'Calls on the other classes which are used in the deposit process' do
      credit = Credit.new(10)
      date = DateNow.new
      balance = Balance.new
      balance = balance.calculating_balance(credit.credit_amount)
      debit = "||"
      transaction = TransactionLog.new
      transaction_log = transaction.createing_transaction_array(date.createdate, credit.credit_amount, debit, balance)
      p transaction_log
    end
  end
end
#   context '#statement_printing_process' do
#     it 'Prints the statement' do
#
#   end
# end
