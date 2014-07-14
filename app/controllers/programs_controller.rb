class ProgramsController < ApplicationController
	def new
	end

	def create
		@program = Program.new(program_params)
		@program.save
		redirect_to @program
	end

	def index
		@programs = Program.all
	end

	def edit
		@program =Program.find(params[:id])
	end

	def show
		@program =Program.find(params[:id])
	end

	private
		def program_params
			params.require(:program).permit(:name, :description)
		end
end
