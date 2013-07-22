# Can update steps for the instruction guide
require 'spec_helper'

feature 'Updating Steps for an Instruction Guide' do
	scenario "can update steps for an instruction guide" do
		instructionguide= FactoryGirl.create(:instructionguide, :name => "How to Make a sandwich")
		step = FactoryGirl.create(:step, :instructionguide => instructionguide, :title => "Bake bread")
		visit '/'
		click_link "How to Make a sandwich"
		click_link "Bake bread"
		click_link "Edit Step"
		fill_in "step_title", :with => "Buy some bread"
		click_button "Edit Step"
		page.should have_content ("Step has been updated.")
		page.should have_content("Buy some bread")
		page.should_not have_content ("Bake bread")

	end
  end	
