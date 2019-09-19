Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trees, path: :'' ,only: [:show] do
    member do
      get "parent/:node_id" => "trees#parent"
      get "child/:node_id" => "trees#child"
    end
  end  
end