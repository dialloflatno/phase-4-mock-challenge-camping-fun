class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :campers , only: [:create , :show, :update ]
  before_action :cAmpers , only: [:index]
  before_action :lost_camper , only: [:destroy]
  before_action :new_camper , only: [:create]
  before_action :updated_camper , only: [:update]


end

private 

          def campers
            Camper.find_by(id: params[:id])
          end

          def cAmpers 
            Camper.all
          end

          def camper_info
            params.permit(:name,:id)
          end

          def updated_camper 
            campers.update(camper_info)
          end

          def new_camper 
            Camper.create(camper_info)
          end

          def lost_camper
             campers.delete
          end

