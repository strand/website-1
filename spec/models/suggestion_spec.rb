require 'spec_helper'

describe Suggestion do
  it "should validates presence of description" do
    suggestion = FactoryGirl.build :suggestion, description: nil
    expect(suggestion).not_to be_valid
  end

end
