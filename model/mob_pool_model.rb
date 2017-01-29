require 'active_record'

class MobPool < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :mob_groups
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
