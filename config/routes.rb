Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'homes#top'
get 'books' => 'books#index'
get 'books/:id' => 'books#show', as: 'book'
post 'books' => 'books#create'
get 'books/:id/edit' => 'books#edit', as: 'edit_book'
patch 'books/:id' => 'book#update', as: 'update_book'
end
