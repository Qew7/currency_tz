require 'rails_helper'

describe RateChooser do
  context "When actual forced rate exist" do 
    subject { described_class.new.call }
    let!(:forced_rate) { ForcedRate.create(value: '1.1', last_to: DateTime.tomorrow) }

    it "returns forced rate" do
      expect(subject).to be_an ForcedRate
    end
  end

  context "When actual rate exist" do 
    subject { described_class.new.call }
    let!(:rate) { Rate.create(value: '1.1') }

    it "returns rate" do
      expect(subject).to be_an Rate
    end
  end
end