require_relative 'environment'

class CreateMobDropListTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_drop_lists do |t|
      t.integer :drop_id
      t.integer :drop_type
      t.integer :item_id
      t.integer :rate
    end
  end

  def down
    drop_table :mob_drop_lists
  end

end

def main
  action = (ARGV[0] || :up).to_sym

  CreateMobDropListTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
