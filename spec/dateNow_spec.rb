require 'dateNow.rb'
require 'spec_helper'

describe DateNow do
  let (:date) { double :date }
  subject {DateNow.new(date)}

  context '#createdate' do
    it 'creates a date for today' do
      expect(date).to recieve{:today}
      date.createdate
    end
  end
end


# .and_return("04/10/2017")
