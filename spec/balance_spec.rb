require 'balance'

describe Balance do
  let(:balance) { Balance.new }

  context '#initialize' do
    it 'the current balance starts at zero' do
      expect(balance.current_balance).to eq 0
    end
  end

  context '#calculating_balance' do
    it 'Calculated the balance when passed the amount deposited' do
       expect(balance.calculating_balance(10)).to eq 10
    end
  end
end

# balance takes credit.credit_amount and deducts this amount from the balance
# balance.balance_calculation(credit.credit_amount)
# and returns balance.balance_amount curent balance - credit.credit_amount
