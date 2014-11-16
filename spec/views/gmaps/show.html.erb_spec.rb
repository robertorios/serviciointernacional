require 'rails_helper'

RSpec.describe "gmaps/show", :type => :view do
  before(:each) do
    @gmap = assign(:gmap, Gmap.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :description => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
  end
end
