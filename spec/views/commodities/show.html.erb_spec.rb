require 'spec_helper'

describe "commodities/show" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :name => "Name",
      :unit_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
