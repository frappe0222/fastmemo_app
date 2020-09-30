Rails.application.routes.draw do
  get 'memos', to: 'memos#index'
end