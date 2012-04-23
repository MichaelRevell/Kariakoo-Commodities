require 'spec_helper'

describe "price_histories/edit" do
  before(:each) do
    @price_history = assign(:price_history, stub_model(PriceHistory,
      :farmGateLow => 1,
      :farmGateHigh => 1,
      :deliverHigh => 1,
      :deliverLow => 1,
      :wholesaleHigh => 1,
      :wholesaleHigh => 1,
      :retailHigh => 1,
      :retailLow => 1
    ))
  end

  it "renders the edit price_history form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => price_histories_path(@price_history), :method => "post" do
      assert_select "input#price_history_farmGateLow", :name => "price_history[farmGateLow]"
      assert_select "input#price_history_farmGateHigh", :name => "price_history[farmGateHigh]"
      assert_select "input#price_history_deliverHigh", :name => "price_history[deliverHigh]"
      assert_select "input#price_history_deliverLow", :name => "price_history[deliverLow]"
      assert_select "input#price_history_wholesaleHigh", :name => "price_history[wholesaleHigh]"
      assert_select "input#price_history_wholesaleHigh", :name => "price_history[wholesaleHigh]"
      assert_select "input#price_history_retailHigh", :name => "price_history[retailHigh]"
      assert_select "input#price_history_retailLow", :name => "price_history[retailLow]"
    end
  end
end
