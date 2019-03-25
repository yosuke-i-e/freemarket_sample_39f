class ItemImage < ApplicationRecord
  belongs_to :item
  mount_uploader :body, ImagesUploader
end
