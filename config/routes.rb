PusherPresence::Application.routes.draw do
  root to: 'home#index'
  post 'pusher/auth', to: 'pusher#auth'
  post 'home/send_comment', to: 'home#send_comment'
  post 'home/send_loc', to: 'home#send_loc'
end
