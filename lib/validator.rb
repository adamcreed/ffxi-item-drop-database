class Validator
  def self.is_number?(text)
    text.match(/^\d+$/)
  end

  def self.is_word?(text)
    text.match(/^[\w\-]+$/i)
  end

  def self.are_words?(text)
    # Splits words on non-"word" chars except hyphen
    # Also catches empty strings
    words = text.scan(/[\w\-]+|^$/)
    words.each { |word| return false unless is_word?(word) }
  end

  def self.is_within_bounds?(input_number, range)
    range.include? input_number.to_i
  end
end
