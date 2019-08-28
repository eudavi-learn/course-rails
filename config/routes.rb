Rails.application.routes.draw do
  get '/criar-monstro', to: "monsters#new", as: "new_monster"
  post '/criar-monstro', to: "monsters#create", as: "create_monster"
  get '/listar-monstros', to: "monsters#index", as: "monsters"
  get '/mostrar-monstro/:id', to: "monsters#show", as: "show_monster"
  delete '/deletar-monstro/:id', to: "monsters#destroy", as: "destroy_monster"
  get '/editar-monstro/:id', to: "monsters#edit", as: "edit_monster"
	put '/editar-monstro/:id', to: "monsters#update", as: "update_monster"
  
  root to: 'monsters#index'
end
