Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/number_cubed/:number' => 'main#number_cubed'
  get '/numbers_div/:number1/:number2' => 'main#numbers_div'
  get '/string_length/:word' => 'main#string_length'
  get '/palindrome/:word' => 'main#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'main#madlib'
end
