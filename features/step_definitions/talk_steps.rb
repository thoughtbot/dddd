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
