require 'balance.rb'
require 'credit.rb'
require 'dateNow.rb'
require 'debit.rb'
require 'output.rb'
require 'StatementDisplay.rb'
require 'output.rb'

# The class is where the user actions are contained. It is used to call on the other classes and control the flow of information.

class BankController
  attr_accessor :balance, :credit, :debit, :date, :transaction

  def initialize
    @balance = 0
    @credit = 0
    @debit = 0
    @date = 0
    @transaction = 0
  end

  def balance
    @balance = Balance.new
  end

  def transaction
    @transaction = TransactionLog.new
  end

  def create_balance_and_transaction_for_account
    balance
    transaction
  end

  def deposit_process(amount)
    @credit = Credit.new(amount)
    @date = DateNow.new
    @balance = @balance.calculating_balance(@credit.credit_amount)
    @debit = '||'
    @transaction.createing_transaction_array(@date.createdate, @credit.credit_amount, @debit, @balance)
  end

  def withdrawal_process(amount)
    @debit = Debit.new(amount)
    @date = DateNow.new
    @balance = @balance.calculating_balance(@debit.debit_amount)
    @credit = '||'
    @transaction.createing_transaction_array(@date.createdate, @debit.debit_amount, @credit, @balance)
  end

  def statement_printing_process
    statement = Statement.new(@transaction.account_transactions)
    statement.statment_header
    statement.transaction_information
  end
end
