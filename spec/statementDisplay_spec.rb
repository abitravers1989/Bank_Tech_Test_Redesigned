require 'statement_display'

describe StatementDisplay do
  context '#print_statmentheader' do
    it 'prints the statement header' do
      statement = StatementDisplay.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
      expect { statement.print_statment_header }.to output('date || credit || debit || balance').to_stdout
    end
  end

# header
#
# || and string splitter.
