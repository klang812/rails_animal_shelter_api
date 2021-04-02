Rails.application.routes.draw do
  resources :animals do
    resources :dogs
  end
  
  resources :animals do
    resources :cats
  end
end
