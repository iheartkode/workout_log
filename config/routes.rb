Rails.application.routes.draw do
  resource :workouts
  root 'workouts#index'
end
