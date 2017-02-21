class PigLatinizer

  CONSTS = "bcdfghjklmnpqrstvwxyz".split("")
  VOWELS = "aeoui".split("")

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if CONSTS.include?(word[0].downcase)
      if CONSTS.include?(word[1].downcase) && CONSTS.include?(word[2].downcase)
        pig_word = "#{word[3..-1]}#{word[0..2]}ay"
      elsif CONSTS.include?(word[1].downcase)
        pig_word = "#{word[2..-1]}#{word[0..1]}ay"
      elsif
        pig_word = "#{word[1..-1]}#{word[0]}ay"
      end
    elsif VOWELS.include?(word[0].downcase)
      pig_word = "#{word}way"
    end
    pig_word
  end

end
