require 'balance'

describe Balance do
  let(:balance) { Balance.new }
  let (:credit) { double Credit.new(10) }

  context '#initialize' do
    it 'the current balance starts at zero' do
      expect(balance.current_balance).to eq 0
    end
  end

  # context '#balance_calculation' do
  #   it 'Calculated the balance when passed the amount withdrawn or deposited' do
  #      balance takes credit.credit_amount and deducts this amount from the balance
  #      balance.balance_calculation(credit.credit_amount)
  #      and returns balance.balance_amount curent balance - credit.credit_amount
  #   end
  # end
end
