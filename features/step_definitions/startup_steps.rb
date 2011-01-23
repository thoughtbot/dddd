Then /^I should see "([^"]*)"'s name, avatar, and details$/ do |name|
  page.should have_content("#{name}")
  Then %{I should see "#{name.gsub(' ', '').downcase}"'s "73"px Twitter avatar and link}
end

Then /^I should see the following startups:$/ do |table|
  within "#startup_tables_list" do
    table.hashes.each do |startup|
      page.should have_css(".company h2", :text => startup['name'])
      page.should have_css(".company h2 a[href='#{startup['url']}']")
      page.should have_css(".company p",  :text => startup['description'])
    end
  end
end
