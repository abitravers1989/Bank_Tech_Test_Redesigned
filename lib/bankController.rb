#The class is where the user actions are contained. It is used to call on the other classes and control the flow of information.

class BankController
  attr_accessor :transaction_array, :balance, :credit, :debit, :date

  def initialize
    @transaction_array = []
    @balance = 0
    @credit = 0
    @debit = 0
    @date = 0
  end

  def withdarwal_process(amount)
    @credit = Credit.new(amount)
    @date = DateNow.new
    @balance = Balance.new
    @balance = @balance.calculating_balance(@credit.credit_amount)
    @transaction_array.push(@date.createdate, @credit.credit_amount, @debit, @balance)
  end

end
