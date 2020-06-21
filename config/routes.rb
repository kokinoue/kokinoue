Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    namespace :v1 do
    end
  end
  get '*path', to: 'homes#redirect_to_root'
end
