Rails.application.routes.draw do
  resources :user
  #get "users/:id", to: "users#get_post"
  # get "users", to: "users#select_int_string"
  # get "users/getCoins", to: "users#select_list_with_coins"

end
