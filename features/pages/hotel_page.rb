module Pages
    class HotelPage < Locators::HotelLocator
        include Capybara::DSL
        include RSpec::Matchers

        def initialize
        super()
        end

        def go_to()
            visit($url["TiketURL"] + '/hotel')
        end

        def click_button(param)
            case param
                when "tamu & kamar menu"  
                    wait_until_kamarTamuMenuButton_visible
                    kamarTamuMenuButton.click
                when "min kamar"  
                    wait_until_minKamarButton_visible
                    minKamarButton.click
                when "max kamar'"  
                    wait_until_maxKamarButton_visible
                    maxKamarButton.click
                when "min tamu"  
                    wait_until_minTamuButton_visible
                    minTamuButton.click
                when "max tamu"  
                    wait_until_maxTamuButton_visible
                    maxTamuButton.click
                when "room"  
                    wait_until_maxKamarButton_visible
                    i = 0
                    loop do
                        i += 1
                        maxKamarButton.click
                        if i == param2
                            break
                        end
                    end
                when "guest"  
                    wait_until_maxTamuButton_visible
                    i = 0
                    loop do
                        i += 1
                        maxTamuButton.click
                        if i == param2
                            break
                        end
                    end
                when "tujuan"  
                    scroll_to(tujuanButton, align: :top)
                    wait_until_tujuanButton_visible
                    tujuanButton.click
                    tujuanButton.send_keys "bali"
                when "selesai tamu & kamar menu"  
                    wait_until_selesaiKamarTamuButton_visible
                    selesaiKamarTamuButton.click
                when "cari hotel" 
                    wait_until_cariHotelButton_visible 
                    cariHotelButton.click
                when "bali"  
                    wait_until_baliKotaButton_visible 
                    baliKotaButton.click
                when "Agt 20-22"  
                    wait_until_checkInButton_visible
                    checkInButton.click
                    wait_until_navRightCheckInButton_visible
                    navRightCheckInButton.click
                    wait_until_date23Button_visible
                    date23Button.click
                    wait_until_checkOutButton_visible
                    checkOutButton.click
                    wait_until_date25Button_visible
                    date25Button.click
                when "cancel check in"  
                    wait_until_cancelCheckInButton_visible
                    cancelCheckInButton.click
                when "filter harga"  
                    sleep(inspection_time=5)
                    wait_until_filterHargaButton_visible
                    filterHargaButton.click
                when "filter area"  
                    wait_until_filterAreaButton_visible
                    filterAreaButton.click
                when "filter bintang hotel"  
                    wait_until_filterBintangButton_visible
                    filterBintangButton.click
                when "filter lainnya"  
                    wait_until_filterLainnyaButton_visible
                    filterLainnyaButton.click
                when "wifi fasilitas lainnya"  
                    scroll_to(wifiFilterLainnyaButton, align: :top)
                    wait_until_wifiFilterLainnyaButton_visible
                    wifiFilterLainnyaButton.click
                when "parkir fasilitas lainnya"  
                    scroll_to(parkirFilterLainnyaButton, align: :top)
                    wait_until_parkirFilterLainnyaButton_visible
                    parkirFilterLainnyaButton.click
                when "terapkan fasilitas lainnya"  
                    wait_until_terapkanFilterLainnyaButton_visible
                    terapkanFilterLainnyaButton.click
                when "selected hotel"  
                    scroll_to(hotelPosition1Button, align: :bottom)
                    wait_until_hotelPosition1Button_visible
                    hotelPosition1Button.click
                when "pesan sekarang"  
                    wait_until_priceHotelDetailLabel_visible
                    priceHotelDetailLabel.click
                    wait_until_pesanSekarangButton_visible
                    pesanSekarangButton.click
                when "next month check in"  
                    wait_until_navRightCheckInButton_visible
                    navRightCheckInButton.click
                when "previous month check in"  
                    wait_until_navLeftCheckInButton_visible
                    navLeftCheckInButton.click
                when "date 24"  
                    wait_until_date24Button_visible
                    date24Button.click
                when "date 25"  
                    wait_until_date25Button_visible
                    date25Button.click
                when "4 Bintang"  
                    wait_until_bintang4Checkbox_visible
                    bintang4Checkbox.click
                    wait_until_popOverBintangButton_visible
                    popOverBintangButton.click
                when "seminyak area"  
                    wait_until_seminyakAreaCheckbox_visible
                    seminyakAreaCheckbox.click
                    wait_until_popOverAreaButton_visible
                    popOverAreaButton.click
                when "cek ketersediaan"  
                    scroll_to(kamarTamuMenuHotelDetailButton, align: :top)
                    wait_until_kamarTamuMenuHotelDetailButton_visible
                    kamarTamuMenuHotelDetailButton.click
                    # make sure total room 8 
                    i = 32
                    loop do
                        i -= 1
                        minKamarHotelDetailButton.click
                        if i == 8
                            break
                        end
                    end
                    wait_until_selesaiTamuKamarHotelDetailButton_visible
                    selesaiTamuKamarHotelDetailButton.click
                    wait_until_cekKetersediaanButton_visible
                    cekKetersediaanButton.click
            end
        end

        def input(param1, param2)
            case param1  
                when "minimum price"  
                    minPriceTextfield.double_click
                    minPriceTextfield.send_keys(:backspace)
                    minPriceTextfield.send_keys param2
                when "maximum price"  
                    maxPriceTextfield.double_click
                    maxPriceTextfield.send_keys(:backspace)
                    maxPriceTextfield.send_keys param2
                    wait_until_maxSliderButton_visible
                    maxSliderButton.click
                    wait_until_popOverHargaButton_visible
                    popOverHargaButton.click
                when "room"  
                    wait_until_maxKamarButton_visible
                    i = 1
                    loop do
                        i += 1
                        maxKamarButton.click
                        if i == param2.to_i
                            break
                        end
                    end
                when "guest"  
                    wait_until_maxTamuButton_visible
                    i = 1
                    loop do
                        i += 1
                        maxTamuButton.click
                        if i == param2.to_i
                            break
                        end
                    end
            end
        end
    
        def assert(param)
            case param 
                when "hotel"  
                    wait_until_kamarTamuMenuButton_visible
                when "hotel detail"  
                    switch_to_window { title == $hotelData["titleHotel"] }
                    wait_until_hotelDetailLabel_visible
                when "filter area"  
                    wait_until_areaLabel_visible
                    i = 0
                    loop do
                        i += 1
                        areaGet = find_all('.location.ellipsis').map(&:text)
                        areaLength = areaGet.length
                        areaActual = areaGet[i].to_s
                        expect(areaActual).to include($hotelData["area"])
                        if i == areaLength.to_i - 1
                            break
                        end
                    end
                when "filter fasilitas lainnya" 
                    wait_until_wifiFasilitasLainnyaLabel_visible
                    wait_until_parkirFasilitasLainnyaLabel_visible
                when "filter bintang hotel" 
                    wait_until_bintangLabel_visible
                when "filter harga" 
                    sleep(inspection_time=10)
                    wait_until_priceLabel_visible
                    i = 0
                    loop do
                        i += 1
                        priceGet = find_all('.after-price').map(&:text)
                        priceLength = priceGet.length
                        priceReplace =  priceGet[0].gsub(/[^0-9]+/, '')
                        priceInt = priceReplace.to_i
                        expect(priceInt).to be_between($hotelData["minPrice"], $hotelData["maxPrice"]).inclusive
                        if i == priceLength.to_i - 1
                            break
                        end
                    end
                when "see result hotel" 
                    wait_until_hotelCardListLabel_visible
                    sleep(inspection_time=5)
            end
        end
    end
end
World(Pages)
