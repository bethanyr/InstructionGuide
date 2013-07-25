require 'spec_helper'

feature 'Deleting Instruction Guide' do

  scenario "can delete an instruction guide" do
    instructionguide= FactoryGirl.create(:instructionguide, 
        :name => "How to Write a Blog Post")
    visit '/'
    click_link instructionguide.name
    page.should have_content(instructionguide.name)
    click_link "Delete Guide"
    save_and_open_page
    page.should have_content("Guide has been deleted.")
  end
end
