require_relative 'environment'

class CreateGroupsTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_groups do |t|
      t.integer :group_id
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

def main
  action = (ARGV[0] || :up).to_sym

  CreateGroupsTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
