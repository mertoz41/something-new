Rails.application.routes.draw do
  # get 'portfolios/index'
  # get 'portfolios/show'
  # get 'portfolios/new'
  # get 'portfolios/create'
  # get 'portfolios/edit'
  # get 'portfolios/update'
  # get 'portfolios/destroy'
  # get 'investors/index'
  # get 'investors/show'
  # get 'investors/new'
  # get 'investors/create'
  # get 'investors/edit'
  # get 'investors/update'
  # get 'investors/destroy'
  # get 'stocks/index'
  # get 'stocks/show'
  # get 'stocks/new'
  # get 'stocks/create'
  # get 'stocks/edit'
  # get 'stocks/update'
  # get 'stocks/destroy'
  get "/", to: "application#homepage", as: "index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :stocks, :investors, :portfolios

end
