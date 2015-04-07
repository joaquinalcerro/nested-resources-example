Rails.application.routes.draw do

  resources :subjects do
    resources :pages, shallow: true do
      resources :sections, shallow: true
    end
  end


  
  root 'subjects#index'

  
end
