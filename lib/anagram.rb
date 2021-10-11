# Your code goes here!
 class Anagram
    attr_reader :word
    

    def initialize(word)
        @word = word
    end

    def match(test_array)
        sorted_word = @word.chars.sort  # split initial word to chars and sort 
        checked_array = test_array.map do |test_word| # take the word list array and separate each
            sorted_test_word = test_word.chars.sort      #convert test word into individual array of characters and sort
            sorted_test_word == sorted_word ? test_word : nil #check if sorted_test_word matches initial sorted_word 
        end    
        checked_array.filter do |word| #filter checked word array to remove nils.
            word != nil
        end
    end

 end
