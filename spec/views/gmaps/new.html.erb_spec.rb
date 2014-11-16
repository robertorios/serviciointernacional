require 'rails_helper'

RSpec.describe "gmaps/new", :type => :view do
  before(:each) do
    assign(:gmap, Gmap.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders new gmap form" do
    render

    assert_select "form[action=?][method=?]", gmaps_path, "post" do

      assert_select "input#gmap_latitude[name=?]", "gmap[latitude]"

      assert_select "input#gmap_longitude[name=?]", "gmap[longitude]"

      assert_select "input#gmap_address[name=?]", "gmap[address]"

      assert_select "textarea#gmap_description[name=?]", "gmap[description]"

      assert_select "input#gmap_title[name=?]", "gmap[title]"
    end
  end
end
