Rails.application.routes.draw do
 resources :books
 root :to => redirect('/books')
 get '/books/:id/similar_books' => 'books#search_similar_books',
 as: :search_similar_books
end