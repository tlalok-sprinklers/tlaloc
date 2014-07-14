class StationsController < ApplicationController
	def new
	end

	def create
		@station = Station.new(station_params)
		@station.save

		redirect_to @station
	end

	def show
		@station = Station.find(params[:id])
	end

	def index
		@stations = Station.all
	end

	def edit
		@station = Station.find(params[:id])
	end

	def update
		@station = Station.find(params[:id])

		if @station.update(station_params)
			redirect_to @station
		else
			render 'edit'
		end
	end

	def destroy
		@station = Station.find(params[:id])
		@station.destroy

		redirect_to station_path
	end
 

	private
		def station_params
			params.require(:station).permit(:name, :description, :enabled)
		end
end
