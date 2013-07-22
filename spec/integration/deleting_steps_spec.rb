# Can delete steps for the instruction guide
require 'spec_helper'

feature 'Deleting Steps for an Instruction Guide' do
	scenario "can delete steps for an instruction guide" do
		instructionguide= FactoryGirl.create(:instructionguide, :name => "How to Make a sandwich")
		step = FactoryGirl.create(:step, :instructionguide => instructionguide, :title => "Bake bread")
		visit '/'
		click_link "How to Make a sandwich"
		click_link "Bake bread"
		click_link "Delete Step"
		page.should have_content("Step has been deleted.")
		page.current_url.should == instructionguide_url(instructionguide)
	end
end