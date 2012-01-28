require 'spec_helper'

describe "units/index" do
  before(:each) do
    assign(:units, [
      stub_model(Unit),
      stub_model(Unit)
    ])
  end

  it "renders a list of units" do
    render
  end
end
