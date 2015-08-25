require 'rails_helper'

RSpec.describe "contact_infos/show", type: :view do
  before(:each) do
    @contact_info = assign(:contact_info, ContactInfo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
