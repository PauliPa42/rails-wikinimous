Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CREATE
  get 'article/new', to: 'articles#new', as: :new
  post 'articles', to: 'articles#create'

  # READ
  get 'articles', to: 'articles#index'
  get 'article/:id', to: 'articles#show', as: :article

  # UPDATE
  get 'article/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'article/:id', to: 'articles#update'

  # DELETE
  delete 'article/:id', to: 'articles#destroy'
end
