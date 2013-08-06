require 'spec_helper'

describe "qstatuses/new" do
  before(:each) do
    assign(:qstatus, stub_model(Qstatus,
      :type => ""
    ).as_new_record)
  end

  it "renders new qstatus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qstatuses_path, :method => "post" do
      assert_select "input#qstatus_type", :name => "qstatus[type]"
    end
  end
end
