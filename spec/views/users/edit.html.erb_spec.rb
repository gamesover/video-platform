require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  let(:user) {
    User.create!(
      email: "MyString",
      organization: nil,
      role: 1
    )
  }

  before(:each) do
    assign(:user, user)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(user), "post" do

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[organization_id]"

      assert_select "input[name=?]", "user[role]"
    end
  end
end
