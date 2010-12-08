Then /^I should see "([^"]*)"'s "([^"]*)"px Twitter avatar and link$/ do |name, size|
  page.should have_css(".logo a[href='http://twitter.com/#{name.downcase}']") do
    page.should have_css("img[src='http://avatar.statusok.com/#{name.downcase}?size=#{size}']")
  end
end
