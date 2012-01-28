require 'spec_helper'

describe "commodities/new" do
  before(:each) do
    assign(:commodity, stub_model(Commodity,
      :nameEnglish => "MyString",
      :nameSwahili => "MyString",
      :quality => "MyString"
    ).as_new_record)
  end

  it "renders new commodity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commodities_path, :method => "post" do
      assert_select "input#commodity_nameEnglish", :name => "commodity[nameEnglish]"
      assert_select "input#commodity_nameSwahili", :name => "commodity[nameSwahili]"
      assert_select "input#commodity_quality", :name => "commodity[quality]"
    end
  end
end
