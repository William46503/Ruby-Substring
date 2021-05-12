dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring_search(keyword, wordlist) 
    #Split and downcase the keyword/sentence and place them into an array
    search_word_list = keyword.downcase.split(" ")
    #Create a new hash for pushing words that satisfy the condition
    search_result = Hash.new(0)

    #Map each work in the dictionary for filtering
    wordlist.map { |word| 
        #for each word in dictionary, check if it is part of the keyword
        search_word_list.map {|kw| 
            if  kw.include?(word)
                #If yes, create a hash with the word and +1 each time it is found
                search_result[word] +=1
            end
        }
    } 
    #Print the result
    return p search_result
end


substring_search("below", dictionary)
substring_search("Howdy partner, sit down! How's it going?", dictionary)