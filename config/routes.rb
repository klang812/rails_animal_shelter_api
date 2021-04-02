Rails.application.routes.draw do
  resources :animals do
    resources :dogs
  
  resources :animals do
    resources :cats
  end
end
