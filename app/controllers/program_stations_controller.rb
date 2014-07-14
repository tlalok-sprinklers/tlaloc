class ProgramStationsController < ApplicationController
	def create
		@program = Program.find(params[:program_id])

		@program_station = @program.program_stations.create(program_station_params)
		redirect_to program_path(@program)
	end

	private
		def program_station_params
				params.require(:program_station).permit(:station_id, :duration, :order)
		end
end
