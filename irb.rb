class Credit
  # without attr_accessor getting unidentified method error
  attr_accessor :credit_amount

  def initialize(amount)
    @credit_amount = amount
  end
end

class Debit
  attr_accessor :debit_amount

  def initialize(amount)
    @debit_amount = -amount
  end
end

class DateNow
  def createdate
    Date.today.strftime('%d/%m/%Y')
  end
end

class Balance
  attr_accessor :current_balance

  def initialize
    @current_balance = 0
  end

  def calculating_balance(amount)
    @current_balance += amount
  end
end


# withdrawal process
credit = Credit.new(10)
date = DateNow.new
balance = Balance.new
balance.calculating_balance(credit.credit_amount)

pass credit.credit_amount   balance    date through to transaction string 


debit = Debit.new(10)
