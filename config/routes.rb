Rails.application.routes.draw do
  get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/articles', to: 'articles#index'
  get '/articles/:id', to: 'articles#show', as: :article
end
