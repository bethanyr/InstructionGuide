class StepsController < ApplicationController
	before_filter :find_instructionguide
	def new
		@step = @instructionguide.steps.build
	end

	def index
		@steps = @instructionguide.steps.all
	end

	def show

	end

	private
	def find_instructionguide
		@instructionguide = Instructionguide.find(params[:instructionguide_id])
	end
end
