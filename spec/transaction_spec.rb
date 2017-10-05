require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new }

  context '#withdraw' do
    it 'Allows the client to input an amount to be withdrawn. This is stored as a debit value' do
      transaction.withdraw(10)
      expect(transaction.debit).to eq 10
    end
  end
end
