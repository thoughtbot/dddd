Then /^I should see the following talks:$/ do |table|
  table.hashes.each do |talk_hash|
    talk = Talk.find_by_name(talk_hash['name'])

    page.should have_css("a[name='#{talk.slug}']")
    page.should have_css("h2",          :text => "#{talk.name} - #{talk.speaker_name}")
    page.should have_css(".abstract p", :text => talk.abstract)
    page.should have_css(".bio p",      :text => talk.speaker_bio)

    talk.resources.each do |resource|
      page.should have_css(".resources li",   :text => resource.description)
      page.should have_css(".resources li a", :text => resource.name)
      page.should have_css(".resources li a[href='#{resource.url}']")
    end
  end
end

Then /^I should see the "([^"]*)" talk$/ do |talk_name|
  talk = Talk.find_by_name(talk_name)

  steps %{
    Then I should see "#{talk.name}"
    And I should see "#{talk.speaker_name}"
    And I should see "#{talk.abstract}"
    And I should see "#{talk.speaker_bio}"
  }

  talk.resources.each do |resource|
    steps %{
      Then I should see "#{resource.name}"
      And I should see "#{resource.description}"
    }
  end
end

Then /^I should not see the "([^"]*)" talk$/ do |talk_name|
  talk = Talk.find_by_name(talk_name)

  steps %{
    Then I should not see "#{talk.name}"
    And I should not see "#{talk.speaker_name}"
    And I should not see "#{talk.abstract}"
    And I should not see "#{talk.speaker_bio}"
  }

  talk.resources.each do |resource|
    steps %{
      Then I should not see "#{resource.name}"
      And I should not see "#{resource.description}"
    }
  end
end
