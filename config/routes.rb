Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :imcs do
        collection do 
          post :imc
        end
        #resources :ic_calculations
      #endm
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
