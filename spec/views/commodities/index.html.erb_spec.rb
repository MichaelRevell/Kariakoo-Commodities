require 'spec_helper'

describe "commodities/index" do
  before(:each) do
    assign(:commodities, [
      stub_model(Commodity,
        :name => "Name",
        :unit_id => 1
      ),
      stub_model(Commodity,
        :name => "Name",
        :unit_id => 1
      )
    ])
  end

  it "renders a list of commodities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
