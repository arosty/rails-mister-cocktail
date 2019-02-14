Rails.application.routes.draw do
	resources :cocktails do
		resources :doses, only: [:new, :create, :show, :edit, :update, :destroy]
	end

  root 'cocktails#index'
end
