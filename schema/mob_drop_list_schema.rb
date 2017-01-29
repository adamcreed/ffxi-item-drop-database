require_relative '../environment'

class CreateMobDropListsTable < ActiveRecord::Migration[5.0]

  def up
    create_table :mob_drop_lists, id: false do |t|
      t.integer :id
      t.integer :drop_type
      t.belongs_to :item_basic
      t.integer :rate
    end
  end

  def down
    drop_table :mob_drop_lists
  end

end

def main
  action = (ARGV[0] || :up).to_sym

  CreateMobDropListsTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
