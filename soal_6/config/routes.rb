Rails.application.routes.draw do
  resources 'candidate'
  root to: 'candidate#index'
end
