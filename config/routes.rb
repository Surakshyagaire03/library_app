
# /books → BooksController#index
# /books/:id → BooksController#show
# as: 'book' creates the book_path(id) helper.

Rails.application.routes.draw do
  get '/books', to: 'books#index'         # its a mannual routes for books
  get '/books/:id', to: 'books#show', as: 'book'
end

