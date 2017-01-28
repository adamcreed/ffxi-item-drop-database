require_relative 'environment'
require_relative 'mob_pools_model'
require 'csv'

def main
  CSV.foreach('data/mob_pools') do |row|
    mob_pool = MobPool.create(
    pool_id:          row[0],
    name:             row[1],
    packet_name:      row[2],
    family_id:        row[3],
    model_id:         row[4],
    m_job:            row[5],
    s_job:            row[6],
    cmb_skill:        row[7],
    cmb_delay:        row[8],
    cmb_dmg_mult:     row[9],
    behavior:         row[10],
    aggro:            row[11],
    true_detection:   row[12],
    links:            row[13],
    mob_type:         row[14],
    immunity:         row[15],
    name_prefix:      row[16],
    flag:             row[17],
    flags:            row[18],
    animation_sub:    row[19],
    has_spell_script: row[20],
    spell_list:       row[21],
    name_v_is:        row[22],
    roam_flag:        row[23],
    skill_list_id:    row[24]
    )
  end
end

main if __FILE__ == $PROGRAM_NAME
