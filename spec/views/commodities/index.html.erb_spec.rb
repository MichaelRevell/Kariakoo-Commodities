require 'spec_helper'

describe "commodities/index" do
  before(:each) do
    assign(:commodities, [
      stub_model(Commodity,
        :englishName => "English Name",
        :swahiliName => "Swahili Name",
        :quality => "Quality",
        :farmgate_unit => "Farmgate Unit",
        :delivered_unit => "Delivered Unit",
        :wholesale_unit => "Wholesale Unit",
        :retail_unit => "Retail Unit"
      ),
      stub_model(Commodity,
        :englishName => "English Name",
        :swahiliName => "Swahili Name",
        :quality => "Quality",
        :farmgate_unit => "Farmgate Unit",
        :delivered_unit => "Delivered Unit",
        :wholesale_unit => "Wholesale Unit",
        :retail_unit => "Retail Unit"
      )
    ])
  end

  it "renders a list of commodities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "English Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Swahili Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Quality".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Farmgate Unit".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Delivered Unit".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Wholesale Unit".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Retail Unit".to_s, :count => 2
  end
end
