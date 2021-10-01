Rails.application.routes.draw do

 
  devise_for :users
  root 'posts#index'
  get 'locale', to: 'locales#save_locale', as: :set_locale
  resources :posts do
    

    collection do
      get :published
      get :surprise
    end
  end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
