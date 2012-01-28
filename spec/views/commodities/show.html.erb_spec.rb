require 'spec_helper'

describe "commodities/show" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :englishName => "English Name",
      :swahiliName => "Swahili Name",
      :quality => "Quality",
      :farmgate_unit => "Farmgate Unit",
      :delivered_unit => "Delivered Unit",
      :wholesale_unit => "Wholesale Unit",
      :retail_unit => "Retail Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/English Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Swahili Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Quality/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Farmgate Unit/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Delivered Unit/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Wholesale Unit/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Retail Unit/)
  end
end
