require 'spec_helper'

describe "commodities/new" do
  before(:each) do
    assign(:commodity, stub_model(Commodity,
      :englishName => "MyString",
      :swahiliName => "MyString",
      :quality => "MyString",
      :farmgate_unit => "MyString",
      :delivered_unit => "MyString",
      :wholesale_unit => "MyString",
      :retail_unit => "MyString"
    ).as_new_record)
  end

  it "renders new commodity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commodities_path, :method => "post" do
      assert_select "input#commodity_englishName", :name => "commodity[englishName]"
      assert_select "input#commodity_swahiliName", :name => "commodity[swahiliName]"
      assert_select "input#commodity_quality", :name => "commodity[quality]"
      assert_select "input#commodity_farmgate_unit", :name => "commodity[farmgate_unit]"
      assert_select "input#commodity_delivered_unit", :name => "commodity[delivered_unit]"
      assert_select "input#commodity_wholesale_unit", :name => "commodity[wholesale_unit]"
      assert_select "input#commodity_retail_unit", :name => "commodity[retail_unit]"
    end
  end
end
