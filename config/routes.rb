Rails.application.routes.draw do
  devise_for :users
	root "grams#index"
	get resources :grams
end
