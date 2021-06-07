Given(/^user successfully login from facebook with email "([^"]*)" and password "([^"]*)"$/) do |email,password|
    @login_page.go_to()
    @login_page.click_button("masuk dengan facebook")
    @login_page.input("no or email facebook", email)
    @login_page.input("password facebook", password)
    @login_page.click_button("login facebook")
end

Given(/^user successfully login from email with email "([^"]*)" and password "([^"]*)"$/) do |email,password|
    @login_page.go_to()
    @login_page.input("no or email", email)
    @login_page.click_button("lanjutkan")
    @login_page.input("password email", password)
    @login_page.click_button("login email")
end