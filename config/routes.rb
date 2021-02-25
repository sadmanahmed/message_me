Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post 'message' => 'messages#create'

  mount ActionCable.server, at: '/cable'
end
