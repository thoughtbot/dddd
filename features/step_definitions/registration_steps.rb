When /^I choose the "([^"]*)" role$/ do |role|
  choose "registration_role_#{role.downcase}"
end

Then /^I should see "([^"]*)" on text inputs of the registration form$/ do |content|
  %w(name school_name).each do |field|
    with_scope("#registration_#{field}_input") { page.should have_content(content) }
  end
end

Then /^I should not see the registration form$/ do
  page.should have_no_css("form[id='event-registration']")
end
