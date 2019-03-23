Rails.application.routes.draw do
  
  get "users/:id/posts/:pay_month" => "users#monthly_total"
  get  "users/:id/month_index" => "users#month_index"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"
  get "users/:id/partner_pay" => "users#partner_pay"

  get "posts/:id/month/:pay_month" => "posts#monthly_total" 
  get "posts/month_index/:id" => "posts#month_index"
  get "posts/index/:id" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "/" => "home#top"
  get "about" => "home#about"

end
