class Generator
  def self.alphanumeric_string(length_of_string)
    range = [*'0'..'9', *'a'..'z', *'A'..'Z']
    Array.new(length_of_string){range.sample}.join
  end

  def self.alphabetic_string(length_of_string)
    range = [*'a'..'z', *'A'..'Z']
    Array.new(length_of_string){range.sample}.join
  end

  def self.sentence(num_of_words)
    "#{num_of_words.times.map {Generator.alphabetic_string([*4..9].sample)}.join(" ")}."
  end

  def self.paragraph(num_of_sentences)
    "#{num_of_sentences.times.map {Generator.sentence([*7..13].sample)}.join(" ")}\n"
  end

  def self.name_of(obj, num='', length=6)
    "#{obj.capitalize} #{num} #{Generator.alphabetic_string(length)}"
  end

  def self.date(month, day, year)
    "#{month} #{day}, #{year}"
  end

  def self.email()
    "#{Generator.alphabetic_string(8)}@#{Generator.alphabetic_string(3)}.com"
  end
end
