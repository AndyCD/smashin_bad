Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'main#home'

  get 'about', to: 'main#about'

  get 'grammar', to: 'main#grammar'
  get 'sentence_structure', to: 'main#sentence_structure'
  get 'vocabulary_building', to: 'main#vocabulary_building'
  get 'essay_writing', to: 'main#essay_writing'
  get 'story_writing', to: 'main#story_writing'
  get 'rhetorical_devices', to: 'main#rhetorical_devices'
  get 'classic_english', to: 'main#classic_english'

  resources :users, only: [:index, :show, :edit, :update, :destroy]

  patch 'users/:id/update', to: 'users#reactivate_user', as: 'reactivate_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
