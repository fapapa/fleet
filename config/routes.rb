Rails.application.routes.draw do
  get 'stats', to: 'stats#index', as: :stats
end
