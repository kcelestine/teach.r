class RandomGenerator
  def self.alphanumeric_string(length_of_string)
    range = [*'0'..'9', *'a'..'z', *'A'..'Z']
    Array.new(length_of_string){range.sample}.join
  end
end
