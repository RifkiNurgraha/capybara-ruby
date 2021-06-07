Then(/^User successfully go to transaction Page$/) do
    @transaction_page.assert("payment list");
end
When(/^User click "([^"]*)" at transaction Page$/) do |param|
    @transaction_page.click_button(param);
end
Then(/^User successfully go to "([^"]*)" transaction Page$/) do |param|
    @transaction_page.assert(param);
end