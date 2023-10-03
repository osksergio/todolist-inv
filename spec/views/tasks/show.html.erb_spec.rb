require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    assign(:task, Task.create!(
      name: "Name",
      finished: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
