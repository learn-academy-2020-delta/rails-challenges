Rails.application.routes.draw do
  root to: 'main#team'
  get '/question' => 'main#question'
  get '/answer' => 'main#answer'
  get '/places' => 'main#places'
  get '/television' => 'main#television'
end
