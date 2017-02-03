Rails.application.routes.draw do
  resources :subscribers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'contact-form' => 'subscribers#contact_form'
  root 'application#index'
end
