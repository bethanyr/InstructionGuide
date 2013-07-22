class StepsController < ApplicationController
	before_filter :find_instructionguide
	before_filter :find_step, :only => [:show, :edit, :update, :destroy]
	def new
		@step = @instructionguide.steps.build
	end

	def index
		@steps = @instructionguide.steps.order("order asc")
	end

	def show

	end

	def create
		@step = @instructionguide.steps.build(params[:step])
		if @step.save
			flash[:notice] = "Step has been created."
			redirect_to [@instructionguide, @step]
		else
			flash[:alert] = "Step has not been created."
			render :action => "new"
		end
	end

	def edit

	end

	def update
		if @step.update_attributes(params[:step])
			flash[:notice] = "Step has been updated."
			redirect_to [@instructionguide, @step]
		else
			flash[:alert] = "Step has not been updated."
			render :action => "edit"
		end
	end
	def destroy
		@step.destroy
		flash[:notice] = "Step has been deleted."
		redirect_to @instructionguide
	end

	private
	def find_instructionguide
		@instructionguide = Instructionguide.find(params[:instructionguide_id])
	end
	def find_step
	  	@step = @instructionguide.steps.find(params[:id])
	end
end
