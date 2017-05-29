Rails.application.routes.draw do
  
  resources :projects
  resources :line_items do
    collection { post :import}
  end

  resources :material_units
  
  resources :materials do
    collection { post :import}
  end

  root to: 'line_items#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
