# This class is responsible for storing a current balance, and for calculating the
# balance when passed a credit or debit amount
class Balance
  attr_accessor :current_balance

  def initialize
    @current_balance = 0
  end

  def calculating_balance(amount)
    @current_balance += amount
  end
end
