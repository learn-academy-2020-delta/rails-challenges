Rails.application.routes.draw do
  # get '/question' => 'main#question'
  # get '/answer' => 'main#answer'
  # root to: 'main#landing'
  get '/places' => 'main#places'
  get '/television' => 'main#televion'
  get '/team' => 'main#team'
  root to: 'main#landing'
end
