Then /^I should see "([^"]*)"'s name, avatar, and details$/ do |name|
  page.should have_content("#{name}")
  page.should have_css(".logo a[href='http://twitter.com/#{name.downcase}']") do
    page.should have_css("img[src='http://avatar.statusok.com/#{name.downcase}?size=73']")
  end
end
