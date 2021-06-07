Then(/^User successfully "([^"]*)" at home Page$/) do |param|
    @home_page.assert(param)
end
When(/^User go to home Page$/) do
    @home_page.go_to()
end
When(/^User click "([^"]*)" at home Page$/) do |param|
    @home_page.click_button(param)
end
