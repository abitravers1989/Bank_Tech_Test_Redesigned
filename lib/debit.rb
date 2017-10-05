#This class stores a single transaction's debit amount
class Debit
  attr_accessor :debit_amount

  def initialize(amount)
    @debit_amount = amount
  end

end
