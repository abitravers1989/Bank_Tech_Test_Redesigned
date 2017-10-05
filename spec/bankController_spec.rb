require 'bankController.rb'

describe BankController do
 let (:bank_controller) { BankController.new }

 context '#initialize' do
   it 'Creates an transaction array which will hold the information on that single transactions' do
     expect(bank_controller.transaction_array).to be_instance_of Array
     expect(bank_controller.transaction_array).to be_empty
   end
 end

 context '#withdrawal_process' do
   it 'Passes an array through to transactionLog??' do
     bank_controller.withdarwal_process(10)
     expect(bank_controller.transaction_array).not_to be_empty
     p bank_controller.transaction_array
   end
 end
end
