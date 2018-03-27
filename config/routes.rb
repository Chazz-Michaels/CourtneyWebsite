Rails.application.routes.draw do

  get 'art/biography'

  get 'art/work'

  get 'yoga/schedule'

  get 'yoga/about'

  root 'landing_page#index'

  get 'landing_page/index'



  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
