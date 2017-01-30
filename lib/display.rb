class Display
  attr_writer :results

  def initialize
    @results = 0
    @row = 0
    @item = 0
    @current_mob = ''
    @next_mob = ''
  end

  def introduction
    print "FFXI mob database\n\n" \
          "Please enter an item to search for: "
  end

  def search_results
    until end_of_results?
      print_row
      puts '' unless pool_is_empty?
      @row += 1
    end
  end

  def print_row
    @item = 0
    until drop_list_is_empty? do
      puts "Name: #{sanitize_field(@results[@row].mob_pools[@item].name)}, " \
           "Item: #{sanitize_field(@results[@row].name)}, " \
           "Rate: #{@results[@row].mob_drop_lists[@item].rate.to_f / 10}%, " \
           "Zone: #{sanitize_field(@results[@row].zones[@item].name)}"

      @current_mob = "#{@results[@row].mob_pools[@item].name}, " \
                      "#{@results[@row].zones[@item].name}"

      go_to_next_item
    end
  end

  def go_to_next_item
    @item += 1
    if pool_is_empty?
      reset_pool
    else
      @next_mob = "#{@results[@row].mob_pools[@item].name}, #{@results[@row].zones[@item].name}"
      puts '' unless item_is_from_same_mob?
    end
  end

  def end_of_results?
    @row >= @results.size
  end

  def pool_is_empty?
    @results[@row].mob_pools[@item].nil?
  end

  def drop_list_is_empty?
    @results[@row].mob_drop_lists[@item].nil?
  end

  def item_is_from_same_mob?
    @next_mob == @current_mob
  end

  def reset_pool
    puts ''
    @next_mob = ''
    @current_mob = ''
  end

  def sanitize_field(text)
    text.gsub(/'/){''}
  end
end
