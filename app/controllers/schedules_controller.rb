class SchedulesController < ApplicationController
	def new
	end

	def create
		@schedule = Schedule.new(schedule_params)
		@schedule.save

		redirect_to @schedule
	end

	def index
		@schedules = Schedule.all
	end

	def edit
		@schedule = Schedule.find(params[:id])
	end

	def show
		@schedule = Schedule.find(params[:id])
	end


	private
		def schedule_params
			params.require(:schedule).permit(:name, :description, :enabled)
		end
end
