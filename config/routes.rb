Rails.application.routes.draw do
  resources :vendor_sweets
  resources :sweets
  resources :vendors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
