Rails.application.routes.draw do

  resources :institutes
  
  resources :personnels

  resources :members do 
  resources :consults
	end

   root 'members#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


end
