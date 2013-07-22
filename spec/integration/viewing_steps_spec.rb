require 'spec_helper'

 #Can view steps for the instruction guide

 feature 'Viewing Steps for an Instruction Guide' do
	scenario "can view steps for an instruction guide" do
		instructionguide= FactoryGirl.create(:instructionguide, :name => "How to Make a sandwich")
		step = FactoryGirl.create(:step, :instructionguide => instructionguide, :title => "Bake a loaf of bread", :order => 1)
		visit ('/')
		click_link "How to Make a sandwich"
		page.should have_content ("Bake a loaf of bread")

	end
  end	

