Rails.application.routes.draw do
   get "/", to: "memos#index"
   get "/new", to: "memos#new"
   post "/create", to: "memos#create"
   delete "/memos/:id", to: "memos#destroy"
   get "/memos/:id/edit", to: "memos#edit"
   patch "/update/:id", to: "memos#update"
end
