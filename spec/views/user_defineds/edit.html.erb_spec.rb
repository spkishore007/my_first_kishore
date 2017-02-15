require 'rails_helper'

RSpec.describe "user_defineds/edit", type: :view do
  before(:each) do
    @user_defined = assign(:user_defined, UserDefined.create!())
  end

  it "renders the edit user_defined form" do
    render

    assert_select "form[action=?][method=?]", user_defined_path(@user_defined), "post" do
    end
  end
end
