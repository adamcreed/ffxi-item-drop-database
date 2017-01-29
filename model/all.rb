require 'active_record'

class ItemBasic < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :mob_drop_list
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

class MobDropList < ActiveRecord::Base
  belongs_to :mob_group
  has_many :item_basics, :foreign_key => 'item_id'
  validates :id, :drop_type, :item_id, :rate, presence: true
end

class MobGroup < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :mob_drop_lists, :foreign_key => 'drop_id'
  has_many :mob_pools, :foreign_key => 'pool_id'
  validates :id,
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

class MobPool < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :mob_group
  validates :id,
            :name,
            :packet_name,
            :family_id,
            :model_id,
            :m_job,
            :s_job,
            :cmb_skill,
            :cmb_delay,
            :cmb_dmg_mult,
            :behavior,
            :aggro,
            :true_detection,
            :links,
            :mob_type,
            :immunity,
            :name_prefix,
            :flag,
            :flags,
            :animation_sub,
            :has_spell_script,
            :spell_list,
            :name_v_is,
            :roam_flag,
            :skill_list_id,
            presence: true
end
