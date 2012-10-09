require 'spec_helper'

describe "packages/new" do
  before(:each) do
    assign(:package, stub_model(Package,
      :title => "MyString",
      :description => "MyString",
      :full_description => "MyString",
      :friendly_code => "MyString"
    ).as_new_record)
  end

  it "renders new package form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => packages_path, :method => "post" do
      assert_select "input#package_title", :name => "package[title]"
      assert_select "input#package_description", :name => "package[description]"
      assert_select "input#package_full_description", :name => "package[full_description]"
      assert_select "input#package_friendly_code", :name => "package[friendly_code]"
    end
  end
end
