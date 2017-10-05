require 'balance'

describe Balance do
  let(:balance) { Balance.new }

  context '#initialize' do
    it 'The current balance starts at zero' do
      expect(balance.current_balance).to eq 0
    end
  end

  context '#calculating_balance' do
    it 'Calculated the balance when passed the amount deposited' do
      expect(balance.calculating_balance(10)).to eq 10
    end

    it 'Changes the current_balance variable when passed a credit (+ve) amount' do
      balance.calculating_balance(20)
      expect(balance.current_balance).to eq 20
    end

    it 'Calculated the balance when passed the amount withdrawn' do
      expect(balance.calculating_balance(-10)).to eq -10
    end

    it 'Changes the current_balance variable when passed a debit (-ve) amount' do
      balance.calculating_balance(-20)
      expect(balance.current_balance).to eq -20
    end
  end
end

# balance takes credit.credit_amount and deducts this amount from the balance
# balance.balance_calculation(credit.credit_amount)
# and returns balance.balance_amount curent balance - credit.credit_amount
