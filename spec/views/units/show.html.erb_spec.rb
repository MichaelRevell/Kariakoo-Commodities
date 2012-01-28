require 'spec_helper'

describe "units/show" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit))
  end

  it "renders attributes in <p>" do
    render
  end
end
