require 'spec_helper'

describe "recruits/show" do
  before(:each) do
    @recruit = assign(:recruit, stub_model(Recruit,
      :name => "Name",
      :email => "Email",
      :cellphone => "Cellphone",
      :residence => "Residence",
      :rails => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Cellphone/)
    rendered.should match(/Residence/)
    rendered.should match(/false/)
  end
end
