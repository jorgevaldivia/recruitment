require 'spec_helper'

describe "recruits/edit" do
  before(:each) do
    @recruit = assign(:recruit, stub_model(Recruit,
      :name => "MyString",
      :email => "MyString",
      :cellphone => "MyString",
      :residence => "MyString",
      :rails => false
    ))
  end

  it "renders the edit recruit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recruits_path(@recruit), :method => "post" do
      assert_select "input#recruit_name", :name => "recruit[name]"
      assert_select "input#recruit_email", :name => "recruit[email]"
      assert_select "input#recruit_cellphone", :name => "recruit[cellphone]"
      assert_select "input#recruit_residence", :name => "recruit[residence]"
      assert_select "input#recruit_rails", :name => "recruit[rails]"
    end
  end
end
