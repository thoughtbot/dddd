When /^I choose the "([^"]*)" role$/ do |role|
  choose "registration_role_#{role.downcase}"
end
