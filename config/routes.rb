Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  devise_for :usuarios, path: 'admin', path_names: { sign_in: 'entrar', sign_out: 'sair' }
  namespace :admin do
    resources :usuarios
    resources :funcionarios
    resources :setors
    resources :unidades
    resources :cargos
    resources :secretarias
  end


  devise_for :funcionarios, path: 'funcionario', path_names: { sign_in: 'entrar', sign_out: 'sair' }
  namespace :funcionarios do
    resources :visitas
    resources :visitantes
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'visitantes/consultar' => 'visitantes#consultar_visitante'
  post 'visitas/registrar' => 'visitas#registrar'
  post 'visitas/registrar' => 'visitas#registrar_visita'
  get 'admin' => 'admin#index'
  # Defines the root path route ("/")
  # root "posts#index"
end
