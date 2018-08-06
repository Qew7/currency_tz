Rails.application.routes.draw do
  root 'main#rate'

  get '/admin', to: 'main#admin'
  post '/admin', to: 'main#force'
end
