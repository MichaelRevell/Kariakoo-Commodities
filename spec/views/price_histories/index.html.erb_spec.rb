require 'spec_helper'

describe "price_histories/index" do
  before(:each) do
    assign(:price_histories, [
      stub_model(PriceHistory,
        :farmGateLow => 1,
        :farmGateHigh => 1,
        :deliverHigh => 1,
        :deliverLow => 1,
        :wholesaleHigh => 1,
        :wholesaleHigh => 1,
        :retailHigh => 1,
        :retailLow => 1
      ),
      stub_model(PriceHistory,
        :farmGateLow => 1,
        :farmGateHigh => 1,
        :deliverHigh => 1,
        :deliverLow => 1,
        :wholesaleHigh => 1,
        :wholesaleHigh => 1,
        :retailHigh => 1,
        :retailLow => 1
      )
    ])
  end

  it "renders a list of price_histories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
