require 'spec_helper'

describe Tour do
  describe "create" do
    before(:each) do
      @tour = FactoryGirl.create(:tour)
    end
    
    [:name].each do |att|
      it "should verify presence of #{att}" do
        @tour.should validate_presence_of(att)
      end
    end
  end
end