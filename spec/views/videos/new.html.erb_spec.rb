require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      title: "MyString",
      description: "MyText",
      organization: nil
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input[name=?]", "video[title]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[organization_id]"
    end
  end
end
