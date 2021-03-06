require 'bankController.rb'
require 'balance.rb'
require 'credit.rb'
require 'dateNow.rb'
require 'debit.rb'
require 'StatementDisplay.rb'

# This test is intended as more of a feature test since this class only calls on other classes instead of doing anything itself
describe BankController do
  let (:bank_controller) { BankController.new }
  let (:balance) { Balance.new }
  let (:transaction) { TransactionLog.new }
  let (:date) { DateNow.new }

  context '#deposit_process' do
    it 'Calls on the other classes which are used in the deposit process' do
      credit = Credit.new(10)
      debit = '||'
      current_balance = balance.calculating_balance(credit.credit_amount)
      current_transaction = transaction.createing_transaction_array(date.createdate, credit.credit_amount, debit, current_balance)
      transaction.account_transactions << current_transaction
    end
  end

  # issue is this creates a new instance of transaction (a new TransactionLog object)
  context '#withdrawal_process' do
    it 'Calls on the other classes which are used in the withdrawal process' do
      debit = Debit.new(10)
      date = DateNow.new
      current_balance = balance.calculating_balance(debit.debit_amount)
      credit = '||'
      current_transaction = transaction.createing_transaction_array(date.createdate, debit.debit_amount, credit, balance)
      transaction.account_transactions << current_transaction
    end
  end

  # account transaction is not carred through
  context '#statement_printing_process' do
    it 'Prints the statement' do
      statement = StatementDisplay.new(transaction.account_transactions)
      # p statement
    end
  end

  context '#Acceptance criteria' do
    it 'Tests the Acceptance criteria of the test' do
      bank_account = BankController.new
      bank_account.deposit_process(1000)
      bank_account.deposit_process(2000)
      bank_account.withdrawal_process(500)
      #  statement = StatementDisplay.new(transaction.account_transactions)
      p bank_account.statement_printing_process
    end
  end
end
