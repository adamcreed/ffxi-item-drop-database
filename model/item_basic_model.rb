require 'active_record'

class ItemBasic < ActiveRecord::Base
  has_many :mob_drop_lists
  has_many :mob_groups, :through => :mob_drop_lists
  has_many :mob_pools, :through => :mob_groups
  has_many :zones, :through => :mob_groups
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

  self.primary_key = 'id'
end
