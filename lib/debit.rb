#This class stores a single transaction's credit or debit amount
class Debit
  attr_accessor :debit

  def initialize
    @debit
  end

  def withdraw(n)
    @debit = n
  end

end
