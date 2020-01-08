Rails.application.routes.draw do
  get '/get_random_joke', to: 'home#get_random_joke', as: 'get_random_joke'
end
