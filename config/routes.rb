Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "articles",          to: "articles#index", as: "articles"
  get "articles/new",      to: "articles#new", as: "articles_create"
  get "articles/:id",      to: "articles#show", as: "article"
  post "articles",         to: "articles#create"
  get "articles/:id/edit", to: "articles#edit", as: "article_edit"
  patch "articles/:id",    to: "articles#update"
  delete "articles/:id",   to: "articles#delete", as: "article_delete"

end
