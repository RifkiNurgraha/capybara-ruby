module Pages
    class FlightPage < Locators::FlightLocator
        include Capybara::DSL
        include RSpec::Matchers

        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"] + '/pesawat')
        end

        def click_button(param)
            case param  
                when "jakarta"  
                    scroll_to(tujuanButton, align: :top)
                    wait_until_tujuanButton_visible
                    tujuanButton.click
                    wait_until_jakartaTujuanButton_visible
                    jakartaTujuanButton.click
                when "surabaya"  
                    wait_until_surabayaTujuanButton_visible
                    surabayaTujuanButton.click
                when "Agt 20"  
                    wait_until_navRightDateButton_visible
                    navRightDateButton.click
                    wait_until_date23Button_visible
                    date23Button.click
                    wait_until_cancelPenumpangMenuButton_visible
                    cancelPenumpangMenuButton.click
                when "Agt 22"  
                    wait_until_pulangCheckbox_visible
                    pulangCheckbox.click
                    wait_until_date25Button_visible
                    date25Button.click
                    wait_until_cancelPenumpangMenuButton_visible
                    cancelPenumpangMenuButton.click
                when "cari penerbangan"  
                    wait_until_cariPenerbanganButton_visible
                    cariPenerbanganButton.click
                when "1 transit"  
                    wait_until_transit1Button_visible
                    transit1Button.click
                when "00:00 - 06:00"  
                    wait_until_waktuBerangkat1Button_visible
                    waktuBerangkat1Button.click
                when "06:00 - 12:00"  
                    wait_until_waktuBerangkat2Button_visible
                    waktuBerangkat2Button.click
                when "Batik Air"  
                    wait_until_maskapaiBatikButton_visible
                    maskapaiBatikButton.click
                when "garuda indonesia" 
                    wait_until_maskapaiGarudaButton_visible 
                    maskapaiGarudaButton.click
                when "selected flight departure"  
                    scroll_to(pilihflightPosition1Button, align: :top)
                    pilihflightPosition1Button.click
                when "selected flight return"  
                    scroll_to(pilihflightPosition1Button, align: :top)
                    pilihflightPosition1Button.click
                    sleep(inspection_time=5)
            end
        end
    
        def assert(param)
            case param 
                when "flight"  
                    wait_until_tujuanButton_visible
                when "see result flight"  
                    wait_until_mengertiInformasiButton_visible
                    mengertiInformasiButton.click
                    wait_until_flightListLabel_visible
                when "filter airline departure"  
                    wait_until_flightListLabel_visible
                    i = 0
                    loop do
                        i += 1
                        airlaneGet = find_all('.text-marketing-airline').map(&:text)
                        airlaneLength = airlaneGet.length
                        airlaneActual = airlaneGet[i].to_s
                        expect(airlaneActual).to include($flightData["airlines"])
                        if i == airlaneLength.to_i - 1
                            break
                        end
                    end
                when "filter airline return" 
                    wait_until_flightListLabel_visible
                    i = 0
                    loop do
                        i += 1
                        airlaneGet = find_all('.text-marketing-airline').map(&:text)
                        airlaneLength = airlaneGet.length
                        airlaneActual = airlaneGet[i].to_s
                        expect(airlaneActual).to include($flightData["airlines"])
                        if i == airlaneLength.to_i - 1
                            break
                        end
                    end
            end
        end
    end
end
World(Pages)
