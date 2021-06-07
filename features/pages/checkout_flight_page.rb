module Pages
    class CheckoutFlightPage < Locators::CheckoutFlightLocator
        include Capybara::DSL
        include RSpec::Matchers

        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"] + '/cart/flight/')
        end

        def click_button(param)
            case param  
                when "title"  
                    wait_until_titleButton_visible
                    titleButton.click
                when "nyonya"  
                    wait_until_titleButton_visible
                    titleButton.click
                    wait_until_tuanTitleButton_visible
                    tuanTitleButton.click
                when "sama dengan pemesan"  
                    scroll_to(samaDenganPemesanButton, align: :top)
                    wait_until_samaDenganPemesanButton_visible
                    samaDenganPemesanButton.click
                when "lanjutkan ke pembayaran"  
                    wait_until_lanjutkanPembayaranButton_visible
                    lanjutkanPembayaranButton.click
                    wait_until_yaLanjutkanPopUpButton_visible
                    yaLanjutkanPopUpButton.click
                    if yaLanjutkanConfirmPopUpButton.visible? == true
                        yaLanjutkanConfirmPopUpButton.click
                        sleep(inspection_time=2)
                    end
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
                    nomorTeleponTextfield.send_keys param2
                when "email"  
                    alamatEmailTextfield.send_keys param2
                when "kewarganegaraan" 
                    wait_until_kewarganegaraanButton_visible
                    scroll_to(kewarganegaraanButton, align: :top)
                    kewarganegaraanButton.click
                    kewarganegaraanTextfield.send_keys param2
                    kewarganegaraanIndonesiaButton.click
            end
        end

        def assert(param)
            case param 
                when "flight checkout detail"  
                    wait_until_hotelCheckoutDetailLabel_visible
            end
        end
    end
end
World(Pages)
