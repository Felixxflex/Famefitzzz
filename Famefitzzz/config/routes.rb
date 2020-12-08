Rails.application.routes.draw do
 
  

  
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :celebs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get "/path/users/page", to: "users#show", as: "users"
  get "/path/celebsnew/page", to: "celebs#new", as: "celebsnew"
  get "/path/about/page", to: "pages#about", as: "about"
  get "/path/contact/page", to: "pages#contact", as: "contact"
  get "/path/propositions/page", to: "pages#propositions", as: "propositions"
  get "/path/share/page", to: "pages#share", as: "share"
  

  
  end


