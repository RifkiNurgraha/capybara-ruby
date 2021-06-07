Then(/^User successfully go to checkout flight Page$/) do
    @checkout_flight_page.assert("flight checkout detail")
end

When(/^User choose title "([^"]*)" in detail pemesanan at checkout flight Page$/) do |param|
    @checkout_flight_page.click_button(param)
end

When(/^User fill "([^"]*)" "([^"]*)" in detail pemesanan at checkout flight Page$/) do |param1, param2|
    @checkout_flight_page.input(param1, param2)
end

When(/^User fill kode negara "([^"]*)" in detail pemesanan at checkout flight Page$/) do |param|
    @checkout_flight_page.click_button(param)
end

When(/^User click "([^"]*)" at checkout flight Page$/) do |param|
    @checkout_flight_page.click_button(param)
end