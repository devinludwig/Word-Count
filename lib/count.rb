class String
  define_method(:count) do |search_word|
    words = downcase.split(' ')
    count = 0
    words.each() do |word|
      if word.==(search_word.downcase())
        count += 1
      end
    end
    count
  end
end
