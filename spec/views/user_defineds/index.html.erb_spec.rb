require 'rails_helper'

RSpec.describe "user_defineds/index", type: :view do
  before(:each) do
    assign(:user_defineds, [
      UserDefined.create!(),
      UserDefined.create!()
    ])
  end

  it "renders a list of user_defineds" do
    render
  end
end
