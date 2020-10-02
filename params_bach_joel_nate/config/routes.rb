Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/cubed/:number' => 'main#cubed'
get '/divisible/:num1/:num2' => 'main#divisible'
get '/letter_nums/:letter' => 'main#letter_nums'
get '/palindrome/:word' => 'main#palindrome'
get '/short_story/:noun/:verb/:adjective/:adverb/' => 'main#short_story'
end