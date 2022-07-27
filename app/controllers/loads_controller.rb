class LoadsController < ApplicationController
    

    def index 
        loads = Load.all
        render json: loads, include: :shipper
    end

    def show
        loads = Load.find_by(loads_params[:id])
        render json: loads, include: :shipper
    end

    def create
        loads = Load.create!(loads_params)
        render json: loads, status: :created
    end

    def update
        loads = Load.find_by(loads_params[:id])
        loads.update(loads_params)
        render json: loads
    end

    def destroy
        loads = Load.find_by(loads_params[:id])
        loads.destroy
        head :no_content
    end
        
    private

    def loads_params
        params.permit( :container_size,
            :weight,
            :origin,
            :destination,
             :price_mile,
             :pickup_date,
             :dropoff_date,
            :shipper_id,
            :carrier_id)
    end
end
