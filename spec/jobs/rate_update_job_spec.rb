require 'rails_helper'

describe RateUpdateJob do 
  context "When job is called" do 
    subject { described_class.new.perform }

    it "should succeed" do
      expect(subject).to be_an Rate
    end

    it "should write new rate" do
      expect(subject).to eq Rate.last
    end
  end
end