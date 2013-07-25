class InstructionguidesController < ApplicationController
before_filter :find_instructionguide, :only => [:show, :edit, :update, :destroy]
	def index
		@instructionguides = Instructionguide.all
	end

	def new
		@instructionguide = Instructionguide.new
	end

	def create
		@instructionguide = Instructionguide.new(params[ :instructionguide])
		if @instructionguide.save
			flash[ :notice] = "Instruction Guide has been created."
			redirect_to @instructionguide
		else
			flash[ :alert] = "Instruction Guide has not been created."
			render :action => "new"	
		end
	end

	def show

	end

	def destroy
		@instructionguide.destroy
		flash[:notice] = "Guide has been deleted."
		redirect_to root_path
	end

	private
	  def find_instructionguide
	  	@instructionguide = Instructionguide.find(params[:id])
	    rescue ActiveRecord::RecordNotFound
	    flash[:alert] = "The instruction guide you were looking" + 
	  				" for could not be found."
	    redirect_to instructionguides_path
	  end
end
