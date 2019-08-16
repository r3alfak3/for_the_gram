Rails.application.routes.draw do
	root "grams#index"
	get resource :grams, only: [:new, :create] 
end
