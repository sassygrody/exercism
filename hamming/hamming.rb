# Top level documentation my ass
class Hamming
  def self.compute(dna_string_1, dna_string_2)
    if dna_string_1.length != dna_string_2.length
      'Cannot compute!'
    else
      compare_values(dna_string_1, dna_string_2)
    end
  end

  def self.compare_values(string_1, string_2)
    arr_1 = string_1.split('')
    arr_2 = string_2.split('')
    count = 0
    until arr_1.empty?
      pop1 = arr_1.pop
      pop2 = arr_2.pop
      count += 1 if pop1 != pop2
    end
    count
  end
end
