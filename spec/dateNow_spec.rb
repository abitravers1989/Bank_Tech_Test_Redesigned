require 'dateNow.rb'
require 'spec_helper'
require 'Date'

describe DateNow do
  subject { DateNow.new }
  let (:date) { double Date }

  context '#createdate' do
    it 'testing that the class has the method createdate which runs' do
      # it is not using the double
      allow(date).to receive(:today).and_return("04/04/2017")
      p date
      p.date.today
      p subject.createdate
      # doesn't seem to use the double of date but instead it creates a new instance of date
      expect(subject.createdate).to eq "04/04/2017"
    end
  end
end
