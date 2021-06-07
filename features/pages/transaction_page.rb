module Pages
    class TransactionPage < Locators::TransactionLocator
        include Capybara::DSL
        include RSpec::Matchers

        def initialize
        super()
        end

        def click_button(param)
            case param  
                when "mandiri virtual account"  
                    scroll_to(mandiriVirtualAccountButton, align: :top)
                    wait_until_mandiriVirtualAccountButton_visible
                    mandiriVirtualAccountButton.click
                when "lanjutkan mandiri virtual account"  
                    wait_until_lanjutkanVirtualAccountButton_visible
                    lanjutkanVirtualAccountButton.click
                when "saya sudah membayar"  
                    scroll_to(sayaSudahMembayarButton, align: :top)
                    wait_until_sayaSudahMembayarButton_visible
                    sayaSudahMembayarButton.click
                    wait_until_keMyOrderButton_visible
                    keMyOrderButton.click
                when "keMyOrder"  
                    keMyOrderButton.click
            end
        end
    
        def assert(param)
            case param 
                when "total pembayaran"  
                    wait_until_totalPembayaranLabel_visible
                when "mandiri virtual account"  
                    wait_until_VirtualAccountLabel_visible
                when "finish order mandiri virtual account"  
                    wait_until_sayaSudahMembayarButton_visible
                when "card bank information" 
                    wait_until_cardBankInformationLabel_visible
                when "payment list" 
                    wait_until_paymentListLabel_visible
            end
        end
    end
end
World(Pages)
