def translate(string)
    vowels = ["a", "e", "i", "o", "u"]
    #vowels = 'aeiou'.split('')
    #vowels = %w[a e i o u]
    words = string.split
    new_words = []

    words.each do |word|
        new_word =
    if word.match(/^.*qu/) #if word starts with qu
        first_part = word[/^.*qu/]
        last_part = word.delete(first_part)
        last_part + first_part + "ay"
    elsif vowels.include?(word[0])
        word + 'ay'
    elsif !vowels.include?(word[0])
        first_part = word[/[^aeiou]+/]
        last_part = word.delete(first_part)
        last_part + first_part + 'ay'
    end
    new_words.push(new_word)
  end
  new_words.join(' ')
end