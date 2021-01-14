class ShoppingListsController < ApplicationController
  def index
   @shoppingLists = ShoppingList.all
 end

 def show
   @shoppingList = ShoppingList.find(params[:id])
 end

 def new
   @shoppingList = ShoppingList.new
 end

 def create
   @shoppingList = ShoppingList.new(shoppingList_params)

   if @shoppingList.save
     redirect_to @shoppingList
   else
     render :new
   end
 end

 def edit
   @shoppingList = ShoppingList.find(params[:id])
 end

 def update
   @shoppingList = ShoppingList.find(params[:id])

   if @shoppingList.update(shoppingList_params)
     redirect_to @shoppingList
   else
     render :edit
   end
 end

 def destroy
   @shoppingList = ShoppingList.find(params[:id])
   @shoppingList.destroy

   redirect_to root_path
 end


 private
   def shoppingList_params
     params.require(:shopping_list).permit(:title)
   end
end
