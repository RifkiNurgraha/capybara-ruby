module Pages
    class CheckoutHotelPage < Locators::CheckoutHotelLocator
        include Capybara::DSL
        include RSpec::Matchers

        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"] + '/checkout')
        end

        def click_button(param)
            case param  
                when "title"  
                    wait_until_titleButton_visible
                    titleButton.click
                when "tuan"  
                    wait_until_titleButton_visible
                    titleButton.click
                    wait_until_tuanTitleButton_visible
                    tuanTitleButton.click
                when "kode negara"  
                    wait_until_kodeNegaraButton_visible
                    kodeNegaraButton.click
                when "lanjutkan ke pembayaran"  
                    wait_until_lanjutkanPembayaranButton_visible
                    lanjutkanPembayaranButton.click
            end
        end
        
        def input(param1, param2)
            case param1  
                when "nama"  
                    namaTextfield.double_click
                    namaTextfield.send_keys(:backspace)
                    namaTextfield.double_click
                    namaTextfield.send_keys(:backspace)
                    namaTextfield.send_keys param2
                when "nomor telepon"  
                    nomorTeleponTextfield.double_click
                    nomorTeleponTextfield.send_keys(:backspace)
                    nomorTeleponTextfield.send_keys param2
                when "email"  
                    alamatEmailTextfield.double_click
                    alamatEmailTextfield.send_keys(:backspace)
                    alamatEmailTextfield.send_keys param2
            end
        end

        def assert(param)
            case param 
                when "hotel checkout detail"  
                    wait_until_hotelCheckoutDetailLabel_visible
            end
        end
    end
end
World(Pages)
