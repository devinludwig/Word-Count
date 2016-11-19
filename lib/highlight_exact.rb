class String
  define_method(:highlight_exact) do |search_word|
    words = split(' ')
    words.each() do |word|
      if word.gsub(/[^\w\s]/, '').downcase().==(search_word.downcase())
        word.gsub!(/#{search_word}/i, '<strong>\0</strong>')
      end
    end
    words.join(' ')
  end
end
