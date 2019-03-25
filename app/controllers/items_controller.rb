class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at DESC").includes(:item_images).limit(top_items)
  end

  def new
    @user = User.find(current_user.id)
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    if @item.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  private

  def top_items
    return 4
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :category_id, :postage, :shipping_date, :state, :region_id, item_images_attributes: [:id, :body]).merge(user_id: current_user.id)
  end

end
