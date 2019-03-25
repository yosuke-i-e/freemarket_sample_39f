# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|mail|string|null: false, unique: true|
|password|integer|null: false|
|profile|text||
|point|integer||
|image|string||

### Association
- has_one :credit_card
- has_one :address
- has_many :comments
- has_many :items
- has_many :purchase_histories


## credit_cardsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|number|integer|null: false, unique: true|
|expiration_m|integer|null: false|
|expiration_y|integer|null: false|
|security_code|integer|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to: user


## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|null: false|
|phone_number|integer|null: false, unique: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true|
|state|string|null: false|
|postage|string|null: false|
|shipping_date|string|null: false|
|price|integer|null: falise|
|description|text|null: false|
|user_id|references|null: false, foreign_key: true|
|region_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|

### Association
- has_one :purchase_history
- has_many :comments
- has_many :item_images
- belongs_to :user
- belongs_to :region
- belongs_to :category
- belongs_to :brand


## regionsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association
- has_many: items


## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many: items


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many: items


## item_imagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|string|null: false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to: item


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## purchase_historiesテーブル

|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
