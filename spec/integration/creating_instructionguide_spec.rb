require 'spec_helper'

feature 'Creating Instruction Guide' do
	scenario "can create an instruction guide" do
		visit ('/')
		click_link 'New Instruction Guide'
		fill_in 'Name', :with=> 'How to make pizza'
		fill_in 'instructionguide_description',  :with => "A step by step guide to make pizza"
		fill_in 'instructionguide_owner', :with => "Pizza Hut"
		click_button 'Create Instructionguide'
		page.should have_content( 'Instruction Guide has been created.')
	end
end