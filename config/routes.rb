Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#homepage"

  scope 'test' do
    get 'categorias', to: "tests#categorias", as: :categorias
    get 'cupons', to: "tests#cupons", as: :cupons
    get 'ofertas', to: "tests#ofertas", as: :ofertas
    get 'contato', to: "tests#contato", as: :contato
    get 'parceiros', to: "tests#parceiros", as: :parceiros
    get 'empresa', to: "tests#empresa", as: :empresa
    get 'empresa2', to: "tests#empresa2", as: :empresa2
    get 'empresa3', to: "tests#empresa3", as: :empresa3
    get 'empresa4', to: "tests#empresa3", as: :empresa4
    get 'pesquisa', to: "tests#pesquisa", as: :pesquisa
    get 'ofertasdestaque', to: "tests#ofertasdestaque", as: :ofertasdestaque
    get 'alimentacao', to: "tests#alimentacao", as: :alimentacao
    get 'alimentacao1', to: "tests#alimentacaodestaque", as: :alimentacaodestaque
    get 'carrinho', to: "tests#carrinho", as: :carrinho
    get 'supermercado', to: "tests#supermercado", as: :supermercado
    get 'supermercado1', to: "tests#supermercadodestaque", as: :supermercadodestaque
    get 'supermercado2', to: "tests#supermercadocarrinho", as: :supermercadocarrinho

    # admin
    get 'homeempresa', to: "tests#homeempresa", as: :homeempresa
    get 'todasofertas', to: "tests#todasofertas", as: :todasofertas
    get 'todoscupons', to: "tests#todoscupons", as: :todoscupons
    get 'criaroferta', to: "tests#criaroferta", as: :criaroferta 
    get 'criarcupom', to: "tests#criarcupom", as: :criarcupom
    get 'editaroferta', to: "tests#editaroferta", as: :editaroferta
    get 'editarcupom', to: "tests#editarcupom", as: :editarcupom
    get 'review', to: "tests#review", as: :review
    get 'dashboard', to: "tests#dashboard", as: :dashboard
    get 'editardados', to: "tests#editardados", as: :editardados
    get 'hover', to: "tests#hover", as: :hover
  end

  scope 'users' do
    get 'index', to: 'users#index', as: :user_index
    get 'novo_usuario', to: 'users#new', as: :new_user
    post 'novo_usuario', to: 'users#create'
    get '/:id/activate', to: 'users#activate', as: :activate
  end

  scope 'auth' do
    get 'login', to: 'sessions#new', as: :login
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy', as: :logout
  end
end
