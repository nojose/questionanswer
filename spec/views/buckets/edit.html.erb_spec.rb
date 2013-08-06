require 'spec_helper'

describe "buckets/edit" do
  before(:each) do
    @bucket = assign(:bucket, stub_model(Bucket,
      :phrase => "MyString"
    ))
  end

  it "renders the edit bucket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buckets_path(@bucket), :method => "post" do
      assert_select "input#bucket_phrase", :name => "bucket[phrase]"
    end
  end
end
