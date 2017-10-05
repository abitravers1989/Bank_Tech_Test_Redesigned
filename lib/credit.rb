#This class stores a single transaction's credit amount
class Credit
# without attr_accessor getting unidentified method error
  attr_accessor :credit_amount
# Need both attr_accessor (which allows the amount to be both set and got/read)
# and initaliser because need to pass a value into credit.new 
  def initialize(amount)
    @credit_amount = amount
  end

end
