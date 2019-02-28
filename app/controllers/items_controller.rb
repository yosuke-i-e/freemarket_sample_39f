class ItemsController < ApplicationController

  def index
    @items = Item.limit(4).order(:created_at).includes(:item_images)
  end

end
