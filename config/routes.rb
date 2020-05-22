Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/studio', to: 'studio#index'
end
