require 'spec_helper'

describe "commodities/show" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :nameEnglish => "Name English",
      :nameSwahili => "Name Swahili",
      :quality => "Quality"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name English/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Swahili/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Quality/)
  end
end
