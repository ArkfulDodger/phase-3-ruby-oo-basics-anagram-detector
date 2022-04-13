require 'pry'

class Anagram
    # attr_accessor :word


    def initialize(word)
        @word = word
    end

    def match(arr)
        arr.select { |str| anagram?(str) }
    end
    
    private

    def anagram?(str)
        letter_counts(@word) == letter_counts(str)
    end
    
    def letter_counts(str)
        ltr_count = {}
        str.split('').each { |a| ltr_count[a] ? ltr_count[a] += 1 : ltr_count[a] = 1 }
        ltr_count
    end
end

listen = Anagram.new('listen')