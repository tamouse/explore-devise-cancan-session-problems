require 'rails_helper'

RSpec.describe "contact_infos/new", type: :view do
  before(:each) do
    assign(:contact_info, ContactInfo.new())
  end

  it "renders new contact_info form" do
    render

    assert_select "form[action=?][method=?]", contact_infos_path, "post" do
    end
  end
end
