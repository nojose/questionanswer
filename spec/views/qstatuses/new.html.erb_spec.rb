require 'spec_helper'

describe "qstatuses/new" do
  before(:each) do
    assign(:qstatus, stub_model(Qstatus,
      :qtype => "MyString"
    ).as_new_record)
  end

  it "renders new qstatus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qstatuses_path, :method => "post" do
      assert_select "input#qstatus_qtype", :name => "qstatus[qtype]"
    end
  end
end
