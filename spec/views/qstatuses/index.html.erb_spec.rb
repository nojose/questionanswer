require 'spec_helper'

describe "qstatuses/index" do
  before(:each) do
    assign(:qstatuses, [
      stub_model(Qstatus,
        :qtype => "Qtype"
      ),
      stub_model(Qstatus,
        :qtype => "Qtype"
      )
    ])
  end

  it "renders a list of qstatuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Qtype".to_s, :count => 2
  end
end
