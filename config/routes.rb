Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:show] do 
  	member do
  		get :choose_course
  	end
  end
  resources :teachers, only: [:index, :destroy]
end
