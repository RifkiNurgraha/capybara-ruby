module Locators
    class LoginLocator < SitePrism::Page
        # button
        element :masukDenganFacebookButton, '#app > div > div:nth-child(2) > div > div > div > div > div.row.signup-content > div.col-xs-4.card-wrapper > div > div > div > div > div.content-wrap > div.social-network-wrap > div > div > ul > li:nth-child(3) > div'
        element :lanjutkanButton, '#app > div > div:nth-child(2) > div > div > div > div > div.row.signup-content > div.col-xs-4.card-wrapper > div > div > div > div > div.content-wrap > div:nth-child(4) > button'
        element :loginEmailButton, '#app > div > div:nth-child(2) > div > div > div > div > div.row.signup-content > div.col-xs-4.card-wrapper > div > div > div > div > div > div.content-wrap > div > form > div:nth-child(4) > button'
        element :loginFacebookButton, '#loginbutton'
        # textfield
        element :noPonselEmailTextfield, '#app > div > div:nth-child(2) > div > div > div > div > div.row.signup-content > div.col-xs-4.card-wrapper > div > div > div > div > div.content-wrap > div.input-wrap > div > div > input[type=text]'
        element :passwordEmailTextfield, '#app > div > div:nth-child(2) > div > div > div > div > div.row.signup-content > div.col-xs-4.card-wrapper > div > div > div > div > div > div.content-wrap > div > form > div.input-wrap.password-wrap > div > input[type=password]'
        element :noEmailFacebookTextfield, '#email'
        element :passwordFacebookTextfield, '#pass'
    end
end