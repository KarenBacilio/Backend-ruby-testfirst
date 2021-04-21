class Book
attr_accessor :title
    def initialize
        @title
    end

    def title
        final_array = []
        little_words = ["and", "over", "the", "a", "an", "in", "of"]
        @title.split.each_with_index do |item, index| 
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


end

# mike = Person.new('Mike')
# @book = Book.new
# @book.title = "inferno"