Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories
  resources :questions, shallow: true do
    resource :choices
  end
  resources :answers,except: [:edit,:update], shallow: true do
    resource :answer_details
    get :answer, on: :collection
  end
  resources :users
end
