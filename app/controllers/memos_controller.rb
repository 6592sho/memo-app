class MemosController < ApplicationController
   def index
      @memos = A.all
   end
   
   def new
   end
   
   def create
      A.create(title:params["memos"]["title"],content:params["memos"]["content"])
      redirect_to "/"
   end
   
   def destroy
      memo = A.find(params["id"])
      memo.destroy
      redirect_to "/"
   end
   
   def edit
      @memo = A.find(params["id"])
   end
   
   def update
      memo = A.find(params["id"])
      memo.title = params["memos"]["title"]
      memo.content = params["memos"]["content"]
      memo.save
      redirect_to "/"
   end
end
