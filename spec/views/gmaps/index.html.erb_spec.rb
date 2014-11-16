require 'rails_helper'

RSpec.describe "gmaps/index", :type => :view do
  before(:each) do
    assign(:gmaps, [
      Gmap.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :description => "MyText",
        :title => "Title"
      ),
      Gmap.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :description => "MyText",
        :title => "Title"
      )
    ])
  end

  it "renders a list of gmaps" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
