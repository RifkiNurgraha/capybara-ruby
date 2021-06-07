Then(/^User successfully go to checkout hotel Page$/) do
    @checkout_hotel_page.assert("hotel checkout detail")
end
When(/^User choose title "([^"]*)" in detail pemesanan at checkout hotel Page$/) do |param|
    @checkout_hotel_page.click_button(param)
end
When(/^User fill "([^"]*)" "([^"]*)" in detail pemesanan at checkout hotel Page$/) do |param1, param2|
    @checkout_hotel_page.input(param1, param2)
end
When(/^User fill kode negara "([^"]*)" in detail pemesanan at checkout hotel Page$/) do |param|
    @checkout_hotel_page.click_button(param)
end
When(/^User click "([^"]*)" at checkout hotel Page$/) do |param|
    @checkout_hotel_page.click_button(param)
end