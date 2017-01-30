require_relative '../model/item_basic_model'
require_relative '../model/mob_drop_list_model'
require_relative '../model/mob_group_model'
require_relative '../model/mob_pool_model'
require_relative '../model/zone_model'
require_relative 'environment'
require_relative 'display'
require_relative 'input'
require 'pry'

class App
  def run
    display = Display.new
    display.introduction
    search = Input.search
    display.results = item_search(search)

    display.search_results
  end

  def item_search(search)
    ItemBasic.includes(:mob_drop_lists, :mob_groups, :mob_pools, :zones)
             .where("item_basics.name LIKE ?", "%#{search}%")
  end
end
