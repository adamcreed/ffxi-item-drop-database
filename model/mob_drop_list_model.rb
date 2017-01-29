require 'active_record'

class MobDropList < ActiveRecord::Base
  belongs_to :item_basic
  has_many :mob_groups
  validates :id, :drop_type, :item_basic_id, :rate, presence: true
  # Not actually a primary key, but ActiveRecord treats id as nil without this
  self.primary_key = 'id'
end
