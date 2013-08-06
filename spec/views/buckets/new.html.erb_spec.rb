require 'spec_helper'

describe "buckets/new" do
  before(:each) do
    assign(:bucket, stub_model(Bucket,
      :phrase => "MyString"
    ).as_new_record)
  end

  it "renders new bucket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buckets_path, :method => "post" do
      assert_select "input#bucket_phrase", :name => "bucket[phrase]"
    end
  end
end
