Rails.application.routes.draw do
  root to: "memos#index"
  resources :memos, only: [:new, :create]
end