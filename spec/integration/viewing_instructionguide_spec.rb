require 'spec_helper'


feature 'Viewing Instruction Guide' do

	scenario "can view all instruction guides" do
		instructionguide= FactoryGirl.create(:instructionguide, :name => "How to Make a sandwich")
		visit ('/')
		click_link instructionguide.name
	    page.current_url.should == instructionguide_url(instructionguide)
	end
end