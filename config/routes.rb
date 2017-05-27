Rails.application.routes.draw do
  resources :material_units
  resources :materials do
    collection { post :import}
  end

  root to: 'materials#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
