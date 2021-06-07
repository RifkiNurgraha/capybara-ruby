module Pages
    class HomePage < Locators::HomeLocator
        include Capybara::DSL
        include RSpec::Matchers
        
        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"])
        end

        def click_button(param)
            case param  
                when "profil"  
                    wait_until_accountButton_visible
                    accountButton.click
                when "keluar"  
                    wait_until_keluarButton_visible
                    keluarButton.click
                    wait_until_keluarYaButton_visible
                    keluarYaButton.click
            end
        end
    
        def assert(param)
            case param 
                when "logout"  
                    wait_until_loginButton_visible
            end
        end
    end
end
World(Pages)
