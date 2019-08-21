Rails.application.routes.draw do
  devise_for :models
  devise_for :users
	root "grams#index"
	resources :grams do
		resources :comments, only: [:create]
	end
end
