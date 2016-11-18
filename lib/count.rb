class String
  define_method(:count) do |search_word|
    words = downcase.split(' ')
    count = 0
    words.each() do |word|
      if word.include?(search_word.downcase())
        count += 1
        word.slice!(search_word)
        words.push(word)
      end
    end
    count
  end
end
