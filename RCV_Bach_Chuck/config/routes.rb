Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/joke' => 'main#joke'
  get '/answer' => 'main#answer'
  get '/places' => 'main#places'
  get '/television' => 'main#television'
  root to: 'main#team'
end
