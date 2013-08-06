require 'spec_helper'

describe "qstatuses/edit" do
  before(:each) do
    @qstatus = assign(:qstatus, stub_model(Qstatus,
      :qtype => "MyString"
    ))
  end

  it "renders the edit qstatus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qstatuses_path(@qstatus), :method => "post" do
      assert_select "input#qstatus_qtype", :name => "qstatus[qtype]"
    end
  end
end
