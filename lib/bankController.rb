require 'balance.rb'
require 'credit.rb'
require 'dateNow.rb'
require 'debit.rb'
require 'StatementDisplay.rb'

# The class is where the user actions are contained. It is used to call on the other classes and control the flow of information.
# How to make sure it is the same transaction log (same instance of the transaction log) every time
class BankController
  attr_accessor :balance, :credit, :debit, :date, :transaction

  def initialize
    @balance = Balance.new
    @credit = 0
    @debit = 0
    @date = 0
    @transaction = TransactionLog.new
  end

  def deposit_process(amount)
    @credit = Credit.new(amount)
    @date = DateNow.new
    current_balance = @balance.calculating_balance(@credit.credit_amount)
    @debit = '||'
    current_transaction = @transaction.createing_transaction_array(@date.createdate, @credit.credit_amount, @debit, current_balance)
  end

  def withdrawal_process(amount)
    @debit = Debit.new(amount)
    @date = DateNow.new
    current_balance = @balance.calculating_balance(@debit.debit_amount)
    @credit = '||'
    current_transaction = @transaction.createing_transaction_array(@date.createdate, @debit.debit_amount, @credit, @balance)
  end

  def statement_printing_process
    statement = StatementDisplay.new(@transaction.account_transactions)
    statement.statment_header
    statement.transaction_information
  end
end
