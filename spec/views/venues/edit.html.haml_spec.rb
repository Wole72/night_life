require 'spec_helper'

describe "venues/edit.html.haml" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :title => "MyString",
      :address => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => venues_path(@venue), :method => "post" do
      assert_select "input#venue_title", :name => "venue[title]"
      assert_select "input#venue_address", :name => "venue[address]"
      assert_select "textarea#venue_description", :name => "venue[description]"
    end
  end
end
