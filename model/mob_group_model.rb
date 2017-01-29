require 'active_record'

class MobGroup < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :mob_drop_list
  belongs_to :mob_pool
  validates :id,
            :mob_pool_id,
            :zone_id,
            :respawn_time,
            :spawn_type,
            :mob_drop_list_id,
            :hp,
            :mp,
            :min_level,
            :max_level,
            :allegiance,
            presence: true
end
