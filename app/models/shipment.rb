class Shipment < ApplicationRecord
  belongs_to :item, optional: true
  enum delivery_burden:{ my: 1, you: 2 }
  enum days:{ fast: 1, normal: 2, late: 3 }

  with_options presence: true do
    validates :family_name
    validates :first_name
    validates :family_name_kana
    validates :first_name_kana
    validates :address_number
    validates :prefecture_id
    validates :street_number
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
