require 'dateNow.rb'
require 'spec_helper'
require 'Date'

describe DateNow do
  subject { DateNow.new }
  let (:date) { double Date }

  context '#createdate' do
    it 'testing that the class has the method createdate which runs' do
      expect(date).to receive(:today).and_return("04/04/2017")
      p date
      p subject.createdate
      # here it seems i am just testing the actual method. not the method with the double inside it.
      expect(subject.createdate).to eq "04/04/2017"
    end
  end
end
