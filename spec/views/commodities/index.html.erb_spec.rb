require 'spec_helper'

describe "commodities/index" do
  before(:each) do
    assign(:commodities, [
      stub_model(Commodity,
        :nameEnglish => "Name English",
        :nameSwahili => "Name Swahili",
        :quality => "Quality"
      ),
      stub_model(Commodity,
        :nameEnglish => "Name English",
        :nameSwahili => "Name Swahili",
        :quality => "Quality"
      )
    ])
  end

  it "renders a list of commodities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name English".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Swahili".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Quality".to_s, :count => 2
  end
end
