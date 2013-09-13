### search text
Then(/^I should see '(.*)'$/) do |contents|
  contents.split(', ').each do |content|
    page.should have_content(content)
  end
end

Then(/^I should see all text:$/) do |table|
  table.rows.flatten.each do |text|
    should have_content(text)
  end
end

### search button
Then (/^I should see '(.*)' button$/) do |name|
 page.find(:button, name).should_not be_nil
end

### select item from select-box
Then(/^I select '(.*)' from '(.*)'$/) do |value, field|
  select(value, from: field)
end

### fill data to field
Then(/^I fill in '(.*)' with '(.*)'$/) do |value, field|
  fill_in(field, with: value)
end

### choose radio button
Then(/^I choose '(.*)'$/) do |choosing_data|
  choose(choosing_data)
end

### simulate mouse hover on some block
When(/^mouse hover on '(.*)' with attribute '(.*)'$/) do |element, attribute|
  find(attribute, text: element).hover
end
