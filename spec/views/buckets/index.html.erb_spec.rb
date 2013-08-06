require 'spec_helper'

describe "buckets/index" do
  before(:each) do
    assign(:buckets, [
      stub_model(Bucket,
        :phrase => "Phrase"
      ),
      stub_model(Bucket,
        :phrase => "Phrase"
      )
    ])
  end

  it "renders a list of buckets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phrase".to_s, :count => 2
  end
end
