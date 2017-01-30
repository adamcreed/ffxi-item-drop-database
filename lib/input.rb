require_relative 'validator'

class Input
  def self.choice(range)
    choice = gets.chomp

    until Validator.is_within_bounds?(choice, range)
      print "Please enter #{range.min}-#{range.max}: "
      choice = gets.chomp
    end

    choice.to_i
  end

  def self.search
    word = format_search(gets.chomp)

    until Validator.are_words?(word)
      print 'Please enter a word or words: '
      word = format_search(gets.chomp)
    end

    word
  end

  def self.format_search(search)
    search.gsub(/([' ])/){'_'}
  end
end
