require 'spec_helper'

describe "recruits/index" do
  before(:each) do
    assign(:recruits, [
      stub_model(Recruit,
        :name => "Name",
        :email => "Email",
        :cellphone => "Cellphone",
        :residence => "Residence",
        :rails => false
      ),
      stub_model(Recruit,
        :name => "Name",
        :email => "Email",
        :cellphone => "Cellphone",
        :residence => "Residence",
        :rails => false
      )
    ])
  end

  it "renders a list of recruits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    assert_select "tr>td", :text => "Residence".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
