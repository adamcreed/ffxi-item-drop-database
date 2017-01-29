require_relative '../environment'

class CreateItemBasicTable < ActiveRecord::Migration[5.0]

  def up
    create_table :item_basics, id: false do |t|
      t.primary_key  :id
      t.integer  :sub_id
      t.string   :name
      t.string   :sort_name
      t.integer  :stack_size
      t.integer  :flags
      t.integer  :ah
      t.integer  :no_sale
      t.integer  :base_sale
    end
  end

  def down
    drop_table :item_basics
  end

end

class CreateMobDropListTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_drop_lists, id: false do |t|
      t.integer :id
      t.integer :drop_type
      t.integer :item_id
      t.integer :rate
    end
  end

  def down
    drop_table :mob_drop_lists
  end

end

class CreateGroupsTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_groups, id: false do |t|
      t.primary_key :id
      t.integer :pool_id
      t.integer :zone_id
      t.integer :respawn_time
      t.integer :spawn_type
      t.integer :drop_id
      t.integer :hp
      t.integer :mp
      t.integer :min_level
      t.integer :max_level
      t.integer :allegiance
    end
  end

  def down
    drop_table :mob_groups
  end
end

class CreateMobPoolsTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_pools, id: false do |t|
      t.primary_key :id
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

  CreateItemBasicTable.migrate(action)
  CreateMobDropListTable.migrate(action)
  CreateMobPoolsTable.migrate(action)
  CreateGroupsTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
