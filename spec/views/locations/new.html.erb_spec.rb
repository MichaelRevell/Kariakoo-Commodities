require 'spec_helper'

describe "locations/new" do
  before(:each) do
    assign(:location, stub_model(Location,
      :name => "MyString",
      :region => "MyString",
      :district => "MyString",
      :ward => "MyString",
      :town => "MyString"
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_region", :name => "location[region]"
      assert_select "input#location_district", :name => "location[district]"
      assert_select "input#location_ward", :name => "location[ward]"
      assert_select "input#location_town", :name => "location[town]"
    end
  end
end
