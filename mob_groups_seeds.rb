require_relative 'environment'
require_relative 'mob_groups_model'
require 'csv'
require 'pry'

def main
  CSV.foreach('data/mob_groups', skip_blanks: true) do |row|
    next if row[0] =~ (/^-- /)
    mob_group = MobGroup.create(
    group_id:     row[0],
    pool_id:      row[1],
    zone_id:      row[2],
    respawn_time: row[3],
    spawn_type:   row[4],
    drop_id:      row[5],
    hp:           row[6],
    mp:           row[7],
    min_level:    row[8],
    max_level:    row[9],
    allegiance:   row[10].scan(/^\d{1,2}/)[0].to_i
    )
  end
end

main if __FILE__ == $PROGRAM_NAME
