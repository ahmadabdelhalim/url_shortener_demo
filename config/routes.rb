Rails.application.routes.draw do
  root 'urls#new'

  resources :urls, only: [:new, :create, :show]

  get ':shortened_link', to: 'urls#shortened_link_redirect'
end
