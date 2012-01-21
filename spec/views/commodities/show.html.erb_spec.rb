require 'spec_helper'

describe "commodities/show" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :name => "",
      :unit_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
