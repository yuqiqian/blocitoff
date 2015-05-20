class ItemsController < ApplicationController
  def create
    @user = current_user
    @item = current_user.items.build(item_params)
    @new_item =Item.new
    authorize @item
    
    if @item.save
      flash[:notice] = "Item is saved!"
    else
      flash[:error] = "There is some problem saving the item, please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  
  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])
    authorize @item
    if @item.destroy
      flash[:notice] = "Item was completed."
    else
      flash[:error] = "Item couldn't be completed."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

end