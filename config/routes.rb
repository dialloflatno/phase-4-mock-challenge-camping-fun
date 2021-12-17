Rails.application.routes.draw do

resources :camper , only: [ :index , :show, :create , :update , :destroy]

end
