class CarriersController < ApplicationController
    def index 
        carrier = Carrier.all
        render json: carrier
    end

    def show
        carrier = Carrier.find_by(carrier_params[:id])
        render json: carrier
    end

    def create
        carrier = Carrier.create!(carrier_params)
        render json: carrier, status: created
    end

    def update
        carrier = Carrier.find_by(carrier_params[:id])
        carrier.update(carrier_params)
        render json: carrier
    end

    def destroy
        carrier = Carrier.find_by(carrier_params[:id])
        carrier.destroy
        head :no_content
    end
        

    private

    def carrier_params
        params.permit(:carrier_name, :email, :password_digest)
      end
end
