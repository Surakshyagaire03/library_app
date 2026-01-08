
# /books → BooksController#index
# /books/:id → BooksController#show
# as: 'book' creates the book_path(id) helper.

Rails.application.routes.draw do
  get  '/books',     to: 'books#index'  # its a mannual routes for books
  get  '/books/new', to: 'books#new',  as: 'new_book'  #for form
  post '/books',     to: 'books#create'  #create book

  get    '/books/:id',      to: 'books#show',   as: 'book'
  get    '/books/:id/edit', to: 'books#edit',   as: 'edit_book'
  patch  '/books/:id',      to: 'books#update'
  delete '/books/:id',      to: 'books#destroy'
end


