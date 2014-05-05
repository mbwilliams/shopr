class ShoppingListsController < ApplicationController

  def index
    @shopping_lists = ShoppingList.all
  end

  def show
    @shopping_list = ShoppingList.find(params[:id])
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def create
    @shopping_list = ShoppingList.new(shopping_list_params)

    if @shopping_list.save
      redirect_to @shopping_list
    else
      render :new
    end
  end

  def edit
    @shopping_list = ShoppingList.find(params[:id])
  end

  def update
    @shopping_list = ShoppingList.find(params[:id])

    if @shopping_list.update(shopping_list_params)
      redirect_to @shopping_list
    else
      render :edit
    end
  end

  def destroy
    @shopping_list = ShoppingList.find(params[:id])
    @shopping_list.destroy

    redirect_to shopping_lists_path
  end

  private

  def shopping_list_params
    params.require(:shopping_list).permit(:name, :purchase_date, :description)
  end

end
