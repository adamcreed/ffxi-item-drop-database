require_relative '../environment'

class CreateMobGroupsTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_groups, id: false do |t|
      t.primary_key :id
      t.belongs_to :mob_pool
      t.integer :zone_id
      t.integer :respawn_time
      t.integer :spawn_type
      t.belongs_to :mob_drop_list
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

def main
  action = (ARGV[0] || :up).to_sym

  CreateMobGroupsTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
