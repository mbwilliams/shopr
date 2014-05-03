class ShoppingListsController < ApplicationController

  def index
    @shopping_lists = ShoppingList.all
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def create
    @shopping_list = ShoppingList.new(shopping_list_params)

    if @shopping_list.save
      redirect_to shopping_lists_path
    else
      render :new
    end
  end

  private

  def shopping_list_params
    params.require(:shopping_list).permit(:name, :purchase_date, :description)
  end

end
