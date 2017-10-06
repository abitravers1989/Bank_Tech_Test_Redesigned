#The class is where the user actions are contained. It is used to call on the other classes and control the flow of information.

class BankController
  attr_accessor :balance, :credit, :debit, :date

  def initialize
    @balance = 0
    @credit = 0
    @debit = 0
    @date = 0
    @transaction = 0
  end

  def withdrawal_process(amount)
    @debit = Debit.new(amount)
    @date = DateNow.new
    @balance = Balance.new
    @balance = @balance.calculating_balance(@debit.debit_amount)
    @credit = "||"
    @transaction = TransactionLog.new
    @transaction.createing_transaction_array(@date.createdate, @credit.credit_amount, @debit, @balance)
  end

  def statement_printing_process(transaction_array)
    statement = Statement.new(transaction_array)
    statement.statment_header
    statement_printing_process(@transaction.account_transactions)
  end

  def deposit_process(amount)
    @credit = Credit.new(amount)
    @date = DateNow.new
    @balance = Balance.new
    @balance = @balance.calculating_balance(@credit.credit_amount)
    @debit = "||"
    @transaction = TransactionLog.new(@date.createdate, @credit.credit_amount, @debit, @balance)
    @transaction.createing_transaction_array(@date.createdate, @credit.credit_amount, @debit, @balance)
  end

end
