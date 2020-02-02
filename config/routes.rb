Rails.application.routes.draw do
  get 'stats', to: 'stats#index', as: :stats
  get 'trip_count', to: 'stats#trip_count'
end
