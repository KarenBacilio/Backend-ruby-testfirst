#write your code here
def echo(your_word)
    your_word
end

def shout(word)
    shout = word.to_s.upcase
    return shout
end

def repeat(message, num_of_times = 2) #default parameter
    an_array = []
    num_of_times.times { |item| an_array.append(message) }
    an_array.join(" ")
end

def start_of_word(string, number)
    string.slice(0,number)
end

def first_word(word)
    word.split[0]
end

def titleize(your_title)
    first_array = your_title.split
    final_array = []
    little_words = ["and", "over", "the"]
    first_array.each_with_index do |item, index| 
        if index == 0 #all first words get capitalized no matter what word they are
        final_array.append(item.capitalize)
        elsif index > 0 && little_words.include?(item)
            final_array.append(item)
        else #or elseif index > 0 && !little_words.include?(item)
            final_array.append(item.capitalize)
        end
    end
    final_array.join(" ")
end
