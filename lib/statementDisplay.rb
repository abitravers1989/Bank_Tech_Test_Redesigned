# Prints statement header. Formats account array (which is an array of single transaction arrays) into printable format

class StatementDisplay
  attr_accessor :account_transactions, :account_string

  def initialize(account_transactions)
    @account_transactions = account_transactions
  end

  def statment_header
    'date || credit || debit || balance'
  end

  def transaction_information_1(single_transaction_array)
    "#{single_transaction_array[0]} || #{single_transaction_array[1]} || || #{single_transaction_array[3]}"
  end

  def transaction_information
    @account_transactions.each do |transaction_arrays|
      puts transaction_information_1(transaction_arrays)
    end
  end
end

# statement = StatementDisplay.new([['05/10/2017', 10, 0, 10], ['05/10/2017', 10, 0, 10]])
# statement.transaction_information
