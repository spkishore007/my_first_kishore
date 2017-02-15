require 'rails_helper'

RSpec.describe "user_defineds/show", type: :view do
  before(:each) do
    @user_defined = assign(:user_defined, UserDefined.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
