class String
  define_method(:highlight) do |search_word|
    gsub(/#{search_word}/i, '<strong>\0</strong>')
  end
end
