require 'spec_helper'

describe "packages/index" do
  before(:each) do
    assign(:packages, [
      stub_model(Package,
        :title => "Title",
        :description => "Description",
        :full_description => "Full Description",
        :friendly_code => "Friendly Code"
      ),
      stub_model(Package,
        :title => "Title",
        :description => "Description",
        :full_description => "Full Description",
        :friendly_code => "Friendly Code"
      )
    ])
  end

  it "renders a list of packages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Full Description".to_s, :count => 2
    assert_select "tr>td", :text => "Friendly Code".to_s, :count => 2
  end
end
