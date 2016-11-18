class String
  define_method(:count) do |search_word|
    if self.==(search_word)
      1
    else
      0
    end

  end
end
