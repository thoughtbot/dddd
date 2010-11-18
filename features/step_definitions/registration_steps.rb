When /^I choose the "([^"]*)" role$/ do |role|
  choose "registration_role_#{role.downcase}"
end

Then /^I should see "([^"]*)" on all text inputs of the registration form$/ do |content|
  %w(twitter name school why).each do |field|
    with_scope("#registration_#{field}_input") { page.should have_content(content) }
  end
end
