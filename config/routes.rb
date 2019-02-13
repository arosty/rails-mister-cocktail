Rails.application.routes.draw do
	resources :cocktails
	resources :doses, only: [:new, :create, :show, :edit, :update, :destroy]

  root 'cocktails#index'
end
