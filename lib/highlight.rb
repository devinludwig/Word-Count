class String
  define_method(:highlight) do |search_word|
    
    gsub(search_word, '<strong>' + search_word +'</strong>')
  end
end
