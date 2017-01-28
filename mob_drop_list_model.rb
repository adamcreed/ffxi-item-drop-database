require 'active_record'

class MobDropList < ActiveRecord::Base
  validates :drop_id, :drop_type, :item_id, :rate, presence: true
end
