require 'dateNow.rb'
require 'spec_helper'
require 'Date'

describe DateNow do
  subject { DateNow.new }
  let (:date) { double Date }

  context '#createdate' do
    it 'testing that the class has the method createdate which runs' do
      allow(date).to receive(:today).and_return("04/04/2017")
      subject.createdate
    end
  end
end
