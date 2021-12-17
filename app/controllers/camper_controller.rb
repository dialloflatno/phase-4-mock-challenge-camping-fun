class CamperController < ApplicationController

    def index 
        render json: cAmpers ,status: :ok
    end
    def show 
        render json: campers ,status: :ok
    end
    def update 
        render json: updated_camper ,status: 202
    end


    def create 
        render json: new_camper  ,status: 201
    end

    def destroy 
        render json: lost_campers ,status: 204
    end

end
