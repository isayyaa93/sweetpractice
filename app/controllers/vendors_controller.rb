class VendorsController < ApplicationController

    def index
        vendors = Vendor.all
        render json: vendors, serializer: VendorWithNamesSerializer
    end

    def show
        vendors = Vendor.find(params[:id])
        if vendors
        render json: vendors, status: :ok
        else
        render json: {error: "Vendor not found"}, status: :not_found
        end
    
    end


    private

    def vendor_params
        params.permit(:name)
      end
end
