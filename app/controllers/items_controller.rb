class ItemsController < ApplicationController
  respond_to :html, :js

  def new
    @item = Item.new
  end

  def create
    @list = current_user.list
    @item = @list.items.new(item_params)

    if @item.save
     flash[:notice] = "Item was saved."
     redirect_to @list
   else
     flash[:error] = "There was an error saving the item. Please try again."
     render :new
   end
 end

 def destroy
  @list = List.find(params[:list_id])
  @item = Item.find(params[:id])

  if @item.destroy
    flash[:notice] = "Item was removed"
  else
    flash[:error] = "Item couldn't be deleted.  Try again."
  end

  respond_with(@item) do |format|
    format.html { redirect_to @list}
  end
 end
private

def item_params
  params.require(:item).permit(:name)
end

end
