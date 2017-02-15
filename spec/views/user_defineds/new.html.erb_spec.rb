require 'rails_helper'

RSpec.describe "user_defineds/new", type: :view do
  before(:each) do
    assign(:user_defined, UserDefined.new())
  end

  it "renders new user_defined form" do
    render

    assert_select "form[action=?][method=?]", user_defineds_path, "post" do
    end
  end
end
