require 'active_record'

class ItemBasic < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :mob_drop_lists
  validates :id,
            :sub_id,
            :name,
            :sort_name,
            :stack_size,
            :flags,
            :ah,
            :no_sale,
            :base_sale,
            presence: true
end
