require 'rails_helper'

RSpec.describe "gmaps/edit", :type => :view do
  before(:each) do
    @gmap = assign(:gmap, Gmap.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit gmap form" do
    render

    assert_select "form[action=?][method=?]", gmap_path(@gmap), "post" do

      assert_select "input#gmap_latitude[name=?]", "gmap[latitude]"

      assert_select "input#gmap_longitude[name=?]", "gmap[longitude]"

      assert_select "input#gmap_address[name=?]", "gmap[address]"

      assert_select "textarea#gmap_description[name=?]", "gmap[description]"

      assert_select "input#gmap_title[name=?]", "gmap[title]"
    end
  end
end
