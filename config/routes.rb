Rails.application.routes.draw do
  
  root to: "static#homepage"
  
  resources :kids do
    resources :milestones
  end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
