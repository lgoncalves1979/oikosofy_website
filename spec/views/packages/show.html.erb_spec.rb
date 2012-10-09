require 'spec_helper'

describe "packages/show" do
  before(:each) do
    @package = assign(:package, stub_model(Package,
      :title => "Title",
      :description => "Description",
      :full_description => "Full Description",
      :friendly_code => "Friendly Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Full Description/)
    rendered.should match(/Friendly Code/)
  end
end
