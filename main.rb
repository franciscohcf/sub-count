# frozen_string_literal: true

require 'pry-byebug'

def substrings(word, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |w, result|
    word.split(' ').each do |i|
      result[w] += 1 if i.downcase.include?(w)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
print substrings("Howdy partner, sit down! How's it going?", dictionary)
