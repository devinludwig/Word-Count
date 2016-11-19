class String
  define_method(:count_exact) do |search_word|
    words = downcase.gsub(/[^\w\s]/, '').split(' ')
    count = 0
    words.each() do |word|
      if word.==(search_word.downcase())
        count += 1
      end
    end
    count
  end
end
