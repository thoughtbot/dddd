class String
  def remove_mid_word_characters
    gsub(/'/, '')
  end

  def replace_non_words_with_spaces
    gsub(/[\W]/, ' ')
  end

  def replace_spaces_with_hyphens
    gsub(/\ +/, '-')
  end
end
