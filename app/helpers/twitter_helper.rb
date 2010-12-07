module TwitterHelper
  def twitter_avatar(name)
    content_tag :div, :class => "logo" do
      link_to "http://twitter.com/#{name.downcase}" do
        image_tag "http://avatar.statusok.com/#{name.downcase}?size=73", :width => "73px", :height => "73px"
      end
    end
  end
end
