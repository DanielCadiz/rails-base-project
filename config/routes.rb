Rails.application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end
  get "/admin/home", to: 'users#admin_home', as: 'admin_home'
  get "/admin/pending_users", to: 'users#pending_users', as: 'pending_user'
  post "/admin/:id/pending_users", to: 'users#approve_pending', as: 'approve_pending_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
