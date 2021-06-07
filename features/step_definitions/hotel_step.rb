Given(/^User go to hotel Page$/) do
    @hotel_page.go_to()
end
When(/^User successfully go to "([^"]*)" Page$/) do |param|
    @hotel_page.assert(param)
end
When(/^User click "([^"]*)" at hotel Page$/) do |param|
    @hotel_page.click_button(param)
end
When(/^User choose "([^"]*)" "([^"]*)" at hotel Page$/) do |param2, param1|
    @hotel_page.input(param1, param2)
end
When(/^User choose date "([^"]*)" at hotel Page$/) do |param|
    @hotel_page.click_button(param)
end
Then(/^User successfully see "([^"]*)" at hotel Page$/) do |param|
    @hotel_page.assert(param)
end
When(/^User fill "([^"]*)" "([^"]*)" at hotel Page$/) do |param2, param1|
    @hotel_page.input(param1, param2)
end
Then(/^User successfully "([^"]*)" at hotel Page$/) do |param|
    @hotel_page.assert(param)
end