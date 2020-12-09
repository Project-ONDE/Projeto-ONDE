Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#homepage"

  scope 'test' do
    get 'categorias', to: "tests#categorias", as: :categorias
    get 'cupons', to: "tests#cupons", as: :cupons
    get 'ofertas', to: "tests#ofertas", as: :ofertas
    get 'contato', to: "tests#contato", as: :contato
    get 'parceiros', to: "tests#parceiros", as: :parceiros
    get 'empresas', to: "tests#empresas", as: :empresas
    get 'pesquisa', to: "tests#pesquisa", as: :pesquisa
    get 'ofertasdestaque', to: "tests#ofertasdestaque", as: :ofertasdestaque
    get 'homeempresa', to: "tests#homeempresa", as: :homeempresa
    get 'criaroferta', to: "tests#criaroferta", as: :criaroferta
    get 'review', to: "tests#review", as: :review
    get 'dashboard', to: "tests#dashboard", as: :dashboard
    get 'todasofertas', to: "tests#todasofertas", as: :todasofertas
    get 'editardados', to: "tests#editardados", as: :editardados
    get 'hover', to: "tests#hover", as: :hover
  end

  scope 'users' do
    get 'index', to: 'users#index', as: :user_index
    get 'novo_usuario', to: 'users#new', as: :new_user
    post 'novo_usuario', to: 'users#create'
  end

  scope 'auth' do
    get 'login', to: 'sessions#new', as: :login
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy', as: :logout
  end
end
