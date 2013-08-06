require 'spec_helper'

describe "qstatuses/show" do
  before(:each) do
    @qstatus = assign(:qstatus, stub_model(Qstatus,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
