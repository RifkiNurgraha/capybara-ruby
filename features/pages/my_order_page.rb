module Pages
    class MyOrderPage < Locators::MyOrderLocator
        include Capybara::DSL
        include RSpec::Matchers

        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"] + '/myorder')
        end

        def assert(param)
            case param 
                when "card order"  
                    wait_until_cardOrderLabel_visible
            end
        end
    end
end
World(Pages)
