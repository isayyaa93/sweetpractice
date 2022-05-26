class VendorSweetsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def create
        vendor_sweets = VendorSweet.create!(vs_params)
        render json: vendor_sweets.sweet, status: :created
    end


    def destroy
        vendor_sweets = VendorSweet.find(params[:id])
        vendor_sweets.destroy
        head :no_content

       
    end

    private

    def vs_params
        params.permit(:vendor_id, :sweet_id, :price)
    end

    def render_not_found_response
        render json: { error: "VendorSweet not found" }, status: :not_found
    end

    
end
