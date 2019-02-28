class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at DESC").includes(:item_images).limit(top_items)
  end

  private

  def top_items
    return 4
  end

end
