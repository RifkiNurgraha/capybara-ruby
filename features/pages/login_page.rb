module Pages
    class LoginPage < Locators::LoginLocator
        include Capybara::DSL
        include RSpec::Matchers
        
        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"] + '/login')
        end

        def click_button(param)
            case param  
                when "masuk dengan facebook"  
                    masukDenganFacebookButton.click
                when "lanjutkan"  
                    lanjutkanButton.click
                when "login facebook"  
                    loginFacebookButton.click
                    sleep(inspection_time=7)
                when "login email"  
                    loginEmailButton.click
            end
        end
    
        def input(param1, param2)
            case param1  
                when "no or email"  
                    noPonselEmailTextfield.send_keys param2
                when "password email"  
                    passwordEmailTextfield.send_keys param2
                when "no or email facebook"  
                    noEmailFacebookTextfield.send_keys param2
                when "password facebook" 
                    passwordFacebookTextfield.send_keys param2
            end
        end
    end
end
World(Pages)
