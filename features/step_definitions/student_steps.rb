Then /^I should see "([^"]*)" and "([^"]*)" in the developer attendee section$/ do |name, school|
  within("#developer-attendees") do
    page.should have_content(name)
    page.should have_content(school)
  end
end

Then /^I should see "([^"]*)" and "([^"]*)" in the designer attendee section$/ do |name, school|
  within("#designer-attendees") do
    page.should have_content(name)
    page.should have_content(school)
  end
end
