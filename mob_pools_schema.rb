require_relative 'environment'

class CreateMobPoolsTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_pools do |t|
      t.integer :pool_id
      t.string :name
      t.string :packet_name
      t.integer :family_id
      t.string :model_id
      t.integer :m_job
      t.integer :s_job
      t.integer :cmb_skill
      t.integer :cmb_delay
      t.integer :cmb_dmg_mult
      t.integer :behavior
      t.integer :aggro
      t.integer :true_detection
      t.integer :links
      t.integer :mob_type
      t.integer :immunity
      t.integer :name_prefix
      t.integer :flag
      t.integer :flags
      t.integer :animation_sub
      t.integer :has_spell_script
      t.integer :spell_list
      t.integer :name_v_is
      t.integer :roam_flag
      t.integer :skill_list_id
    end
  end

  def down
    drop_table :mob_pools
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateMobPoolsTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
