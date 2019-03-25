class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :region
  has_many :item_images
  accepts_nested_attributes_for :item_images

  validates :name, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :postage, presence: true
  validates :shipping_date, presence: true
  validates :state, presence: true
  validates :region_id, presence: true
end
