require 'spec_helper'

describe "qstatuses/index" do
  before(:each) do
    assign(:qstatuses, [
      stub_model(Qstatus,
        :type => "Type"
      ),
      stub_model(Qstatus,
        :type => "Type"
      )
    ])
  end

  it "renders a list of qstatuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
