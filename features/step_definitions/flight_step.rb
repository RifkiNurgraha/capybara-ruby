Given(/^User go to flight Page$/) do
    @flight_page.go_to()
end

When(/^User successfully go to flight Page$/) do
    @flight_page.assert("flight")
end

When(/^User click "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User click berangkat "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User click pulang "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User click maskapai "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User choose from "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User choose to "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User choose date of departure "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

When(/^User choose date of return "([^"]*)" at flight Page$/) do |param|
    @flight_page.click_button(param)
end

Then(/^User successfully see "([^"]*)" at flight Page$/) do |param|
    @flight_page.assert(param)
end

Then(/^User successfully "([^"]*)" at flight Page$/) do |param|
    @flight_page.assert(param)
end