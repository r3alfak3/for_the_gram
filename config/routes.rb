Rails.application.routes.draw do
  devise_for :users
	root "grams#index"
	get resource :grams, only: [:new, :create, :show] 
end
