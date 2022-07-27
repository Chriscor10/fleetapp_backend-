class ShippersController < ApplicationController
    def index 
        shipper = Shipper.all
        render json: shipper, include: :loads
    end

    def show
        shipper = Shipper.find_by(shipper_params[:id])
        render json: shipper, include: :loads
    end

    def create
        shipper = Shipper.create!(shipper_params)
        render json: shipper, status: created
    end

    def update
        shipper = Shipper.find_by(shipper_params[:id])
        shipper.update(shipper_params)
        render json: shipper
    end

    def destroy
        shipper = Shipper.find_by(shipper_params[:id])
        shipper.destroy
        head :no_content
    end
        
    private

    def shipper_params
        params.permit(:company_name, :email, :password_digest )
    end
end
