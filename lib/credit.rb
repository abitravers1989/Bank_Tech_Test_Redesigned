#This class stores a single transaction's credit amount
class Credit
# without attr_accessor getting unidentified method error
  attr_accessor :credit_amount
  
  def initialize(amount)
    @credit_amount = amount
  end

end
