# This class is for pulling together the single tranasction information

class TransactionLog
  attr_accessor :account

  def initialize
    @account = []
  end

  def transaction_string
    ""
  end
end
