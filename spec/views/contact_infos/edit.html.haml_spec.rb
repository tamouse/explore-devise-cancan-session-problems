require 'rails_helper'

RSpec.describe "contact_infos/edit", type: :view do
  before(:each) do
    @contact_info = assign(:contact_info, ContactInfo.create!())
  end

  it "renders the edit contact_info form" do
    render

    assert_select "form[action=?][method=?]", contact_info_path(@contact_info), "post" do
    end
  end
end
