# Can create steps for the instruction guide

# Creating steps without required attributes fails

require 'spec_helper'

feature 'Creating Steps for an Instruction Guide' do
	scenario "can create steps for an instruction guide" do
		instructionguide= FactoryGirl.create(:instructionguide, :name => "How to Make a sandwich")
		visit '/'
		click_link "How to Make a sandwich"
		click_link "New Step"
		fill_in "Title", :with => "Bake a loaf of bread"
		fill_in "Order", :with => 1
		click_button "Create Step"
		page.should have_content ("Step has been created.")

	end
  end	

