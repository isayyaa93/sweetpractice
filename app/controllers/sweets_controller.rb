class SweetsController < ApplicationController
    def index
        sweets = Sweet.all
        render json: sweets, status: :ok
    end

    def show
        sweets = Sweet.find(params[:id])
        if sweets
        render json: sweets, status: :ok
        else
        render json: {error: "Sweet not found"}, status: :not_found
        end
    
    end


    private

    def sweet_params
        params.permit(:name)
      end
end
