Then(/^must be present attribute '(.*)'$/) do |attribute|
  page.should have_css(attribute)
end

Then(/^block with attribure '#editf_main' must not be hidden$/) do 
  page.should have_selector('#editf_main')
end
