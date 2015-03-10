Rails.application.routes.draw do
  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :comments, only: [:create, :destroy, :index, :show, :update]
    resources :contacts, only: [:index] do
      resources :comments, only: [:create, :destroy, :index, :show, :update]
    end
  end

  resources :contacts, only: [:create, :destroy, :show, :update] do
    resources :comments, only: [:create, :destroy, :index, :show, :update]
  end

  resources :contact_shares, only: [:create, :destroy]
end
