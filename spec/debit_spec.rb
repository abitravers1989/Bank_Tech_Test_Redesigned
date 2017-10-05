require 'debit'

describe Debit do
  let(:debit) { Debit.new }

  context '#withdraw' do
    it 'Allows the client to input an amount to be withdrawn. This is stored as a debit value' do
      debit.withdraw(10)
      expect(debit.debit).to eq 10
    end
  end
end
