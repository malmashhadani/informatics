Rails.application.routes.draw do
  get 'welcome/homepage'
  root 'welcome#homepage'
  resources :contactus
  resources :aboutus
  resources :projects
  resources :publications
  resources :researches

  
end
