Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:  'landing#index'
  get :about, to: 'static_pages#about'

  resources :topics, except: [:show] do
    resources :posts, except: [:show] do
      resources :comments, except: [:show]
    end
  end

# resources :topics, except: [:show]
# resources :posts, except: [:show]






  resources :users, only: [:new, :edit, :create, :update]
  resources :sessions, only: [:new, :create, :destroy]

  #below here is just an example for me to understand how
  #to create custom file name for controller
  #below is actually same as topics_controller.rb
  #resources :tps

end
