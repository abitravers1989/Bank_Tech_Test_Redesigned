#Takes a single transaction array passed to it by the controller then formats it

class StatementDisplay
  attr_accessor :string, :transaction_info

  def initialize(account_transactions)
    @account_transactions = account_transactions
  end

  def statment_header
    "date || credit || debit || balance"
  end

  def transaction_information_credit
     @account_transactions.each do |single_transaction_array|
        # transaction_arrays.each do |single_transaction_array|
         puts "#{single_transaction_array[0]} || #{single_transaction_array[1]} || || #{single_transaction_array[3]}"
      end
  end
end

# happens after transaction log
statement = StatementDisplay.new([["05/10/2017", 10, 0, 10], ["05/10/2017", 10, 0, 10]])
statement.transaction_information
