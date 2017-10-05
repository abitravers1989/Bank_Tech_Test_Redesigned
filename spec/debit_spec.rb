require 'debit'

describe Debit do
  let(:debit) { Debit.new(10) }

  context '#withdraw' do
    it 'Allows the client to input an amount to be withdrawn then stores it as a debit value' do
      expect(debit.debit_amount).to eq 10
    end
  end
end
