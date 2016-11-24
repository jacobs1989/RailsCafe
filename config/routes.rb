Rails.application.routes.draw do

  root 'welcome#index'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
 
  resources :bulletins do
    resources :posts
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
