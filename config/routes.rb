Rails.application.routes.draw do
  namespace :api do
    # constraints: { subdomain: 'api' },
    # path: '/' do

    resources 'todos'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
