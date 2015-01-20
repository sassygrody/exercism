require 'pry-byebug'
# Top level documentation my ass
class Hamming
  def self.compute(dna_string_1, dna_string_2)
    if dna_string_1.length != dna_string_2.length
      compute_uneven_lengths(dna_string_1, dna_string_2)
    else
      compare_values(dna_string_1, dna_string_2)
    end
  end

  def self.compare_values(string_1, string_2)
    arr_1 = string_1.split('')
    arr_2 = string_2.split('')
    count = 0

    count += 1 if arr_1.pop != arr_2.pop until arr_1.empty?

    count
  end

  def self.compute_uneven_lengths(string_1, string_2)
    sorted_strings = [string_1, string_2].sort_by(&:length)
    the_short_string = sorted_strings.first
    new_short_string = sorted_strings.last[0..(the_short_string.length - 1)]
    compare_values(the_short_string, new_short_string)
  end
end
