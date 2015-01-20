class CarsController < ApplicationController
	def new 
		@newcar = Car.new
end

	def create
		@car = Car.create car_params
		redirect_to root_path
	end

	def car_params
		params.require(:car).permit(
			:Make,
			:Model,
			:Year,
			:Color
			)
	end

	def show
		@car = Car.find params[:id]
	end

def destroy 
	@car = Car.find params[:id]
	@car.delete
	redirect_to root_path
end


def update
	@car = Car.find params[:id]
	@car.update_attributes car_params
	redirect_to root_path
end


def edit 
	@car = Car.find params[:id]
end


end

