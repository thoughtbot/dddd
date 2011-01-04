Then /^I should see "([^"]*)"'s "([^"]*)"px Twitter avatar and link$/ do |name, size|
  page.should have_css(".avatar a[href='http://twitter.com/#{name}']") do
    page.should have_css("img[src='http://avatar.statusok.com/#{name}?size=#{size}']")
  end
end
