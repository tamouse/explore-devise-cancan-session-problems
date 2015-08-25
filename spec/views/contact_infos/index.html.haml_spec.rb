require 'rails_helper'

RSpec.describe "contact_infos/index", type: :view do
  before(:each) do
    assign(:contact_infos, [
      ContactInfo.create!(),
      ContactInfo.create!()
    ])
  end

  it "renders a list of contact_infos" do
    render
  end
end
