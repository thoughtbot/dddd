class Talk < ActiveRecord::Base
  validates_presence_of :name, :abstract, :speaker_name, :speaker_bio

  has_many :resources

  def slug
    name.remove_mid_word_characters.
         replace_non_words_with_spaces.
         strip.
         replace_spaces_with_hyphens.
         downcase
  end

  def self.chronological
    order("time asc")
  end
end
