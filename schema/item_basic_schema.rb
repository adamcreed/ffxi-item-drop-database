require_relative '../environment'

class CreateItemBasicsTable < ActiveRecord::Migration[5.0]

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

def main
  action = (ARGV[0] || :up).to_sym

  CreateItemBasicsTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
