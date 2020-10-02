Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cubed/:number' => 'main#cubed'
  get '/evenly_divisible/:number1/:number2' => 'main#evenly_divisible'
  get '/counter/:string' => 'main#counter'
  get '/palindrome/:word' => 'main#palindrome'
  get '/story/:noun/:verb/:adjective/:adverb' => 'main#story'
end
