Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/todoapps", to: "todoapps#todolist"
  post "/todoapps/register", to: "todoapps#create"
  put "/todoapps/update/:id", to: "todoapps#update"
  delete "/todoapps/delete/:id", to: "todoapps#destroy"

end
