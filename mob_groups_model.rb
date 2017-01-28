require 'active_record'

class MobGroup < ActiveRecord::Base
  validates :group_id,
            :pool_id,
            :zone_id,
            :respawn_time,
            :spawn_type,
            :drop_id,
            :hp,
            :mp,
            :min_level,
            :max_level,
            :allegiance,
            presence: true
end
