Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root "home#index"
   get "/addmovie" ,to:"movie#form"
   post "/insert", to:"movie#insert"
   get "/list", to:"movie#list"
   get "/update/:id", to:"movie#updateform"
   post "/modify/:id", to:"movie#update"
   get "/delete/:id", to:"movie#Delete"
   get "/reviews" , to:"movie#review"
   get "/re/:name", to:"movie#re"
end
