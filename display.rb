class Display
  attr_writer :results

  def initialize
    @results = 0
    @row = 0
    @pool = 0
    @current_mob = ''
    @next_mob = ''
  end

  def introduction
    print "FFXI mob database\n\n" \
          "Please enter an item to search for: "
  end

  def search_results
    until @row >= @results.size
      print_row
      puts '' unless @results[@row].mob_pools[@pool].nil?
      @row += 1
    end
  end

  def print_row
    @pool = 0
    until @pool >= @results[@row].mob_drop_lists.size do
      puts "Name: #{@results[@row].mob_pools[@pool].name}, " \
           "Item: #{@results[@row].name}, " \
           "Rate: #{@results[@row].mob_drop_lists[@pool].rate.to_f / 10}%, " \
           "Zone: #{@results[@row].zones[@pool].name}"

      @current_mob = "#{@results[@row].mob_pools[@pool].name}, " \
                      "#{@results[@row].zones[@pool].name}"

      @pool += 1
      check_for_next_row
    end
  end

  def check_for_next_row
    if @results[@row].mob_pools[@pool].nil?
      puts ''
      @next_mob = ''
      @current_mob = ''
    else
      @next_mob = "#{@results[@row].mob_pools[@pool].name}, #{@results[@row].zones[@pool].name}"
      puts '' unless @next_mob == @current_mob
    end
  end
end
