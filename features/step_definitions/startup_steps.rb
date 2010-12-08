Then /^I should see "([^"]*)"'s name, avatar, and details$/ do |name|
  page.should have_content("#{name}")
  Then %{I should see "#{name.gsub(' ', '').downcase}"'s "73"px Twitter avatar and link}
end
