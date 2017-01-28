require_relative 'environment'
require_relative 'mob_drop_list_model'
require 'csv'

def main
  CSV.foreach('data/mob_drop_lists') do |row|
    drop_list = MobDropList.create(
      drop_id:   row[0],
      drop_type: row[1],
      item_id:   row[2],
      rate:      row[3]
    )
  end
end

main if __FILE__ == $PROGRAM_NAME
