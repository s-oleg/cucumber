### simulate press link
When(/^I press link '(.*)'$/) do |link|
  click_link(link)
end

### if we have a few links and we must click first of them
When(/^I press first link '(.*)'$/) do |link|
  # all('a').select {|elt| elt.text == link }.first.click
  first(:link, link).click
end

### simulate press button
When(/^I press button '(.*)'$/) do |button|
  click_button(button)
end

### simulate press link with some attributes
When(/^I press link_with_attr '(.*)' with '(.*)'$/) do |link, attribute|
  find(attribute).click_link(link)
end
