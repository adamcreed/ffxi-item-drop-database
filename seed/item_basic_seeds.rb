require_relative '../environment'
require_relative '../model/item_basic_model'
require 'csv'
require 'pry'

def main
  CSV.foreach('data/item_basics') do |row|
    item_basic = ItemBasic.create(
    id:         row[0],
    sub_id:     row[1],
    name:       row[2],
    sort_name:  row[3],
    stack_size: row[4],
    flags:      row[5],
    ah:         row[6],
    no_sale:    row[7],
    base_sale:  row[8],
    )
  end
end

main if __FILE__ == $PROGRAM_NAME
