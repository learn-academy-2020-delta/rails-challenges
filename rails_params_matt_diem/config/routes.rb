Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cubed/:number' => 'main#cubed'
  get '/modulo/:number1/:number2' => 'main#divisible_by'
  get '/length/:string' => 'main#length'
  get 'palindrome/:string' => 'main#palindrome'
  get 'madlib/:noun/:noise/:adjective/:animal' => 'main#madlib'
end
