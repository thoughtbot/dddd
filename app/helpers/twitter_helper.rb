module TwitterHelper
  def twitter_avatar(name, size)
    if name.present?
      content_tag :div, :class => "avatar" do
        link_to "http://twitter.com/#{name}" do
          image_tag "http://avatar.statusok.com/#{name}?size=#{size}", :width => "#{size}px", :height => "#{size}px"
        end
      end
    else
      content_tag :div, :class => "avatar default" do
      end
    end
  end
end
