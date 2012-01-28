require 'spec_helper'

describe "price_histories/show" do
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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
