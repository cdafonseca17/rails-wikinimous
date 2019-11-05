Rails.application.routes.draw do
  get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/articles', to: 'articles#index'
  patch '/articles/:id', to: 'articles#update'
  post '/articles', to: 'articles#create'
  get '/articles/new', to: 'articles#new'
  get '/articles/:id', to: 'articles#show', as: :article
  get '/articles/:id/edit', to: 'articles#edit', as: :article_edit
end
