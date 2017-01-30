require_relative '../environment'
require_relative '../model/zone_model'
require 'csv'
require 'pry'

def main
  CSV.foreach('data/zones') do |row|
    zone = Zone.create(
    id:           row[0],
    zone_type:    row[1],
    zone_ip:      row[2],
    zone_port:    row[3],
    name:         row[4],
    music_day:    row[5],
    music_night:  row[6],
    battle_solo:  row[7],
    battle_multi: row[8],
    restriction:  row[9],
    tax:          row[10],
    misc:         row[11]
    )
  end
end

main if __FILE__ == $PROGRAM_NAME
