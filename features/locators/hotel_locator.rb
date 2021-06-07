module Locators
    class HotelLocator < SitePrism::Page
        # button
        element :tujuanButton, '#formhome > div > div > div.form-flight > div.row.wrapper-form > div.width_228px.list-horizontal__middle.box-flightform.box-flightform__airport.box-flightform__departure > div:nth-child(2) > div.list-horizontal__middle.relative > div.airport.input-flightform'
        element :kamarTamuMenuButton, '#guestAndRoom'
        element :kamarTamuMenuHotelDetailButton, '#search-room-bar > div > div.tix-col-10.tix-row-nowrap > div.tix-pr-1875 > div > input'
        element :minKamarButton, '#guestAndRoom > div > div > div.popup-content > div > div:nth-child(1) > div.number-input > div:nth-child(1)'
        element :maxKamarButton, '#guestAndRoom > div > div > div.popup-content > div > div:nth-child(1) > div.number-input > div:nth-child(3)'
        element :minTamuButton, '#guestAndRoom > div > div > div.popup-content > div > div:nth-child(2) > div.number-input > div:nth-child(1)'
        element :maxTamuButton, '#guestAndRoom > div > div > div.popup-content > div > div:nth-child(2) > div.number-input > div:nth-child(3)'
        element :minKamarHotelDetailButton, '#search-room-bar > div > div.tix-col-10.tix-row-nowrap > div.tix-pr-1875 > div > div > div > div.dialog-content > div > div.tix-row-nowrap > div:nth-child(2) > button:nth-child(4)'
        element :maxKamarHotelDetailButton, '#search-room-bar > div > div.tix-col-10.tix-row-nowrap > div.tix-pr-1875 > div > div > div > div.dialog-content > div > div.tix-row-nowrap > div:nth-child(2) > button:nth-child(2)'
        element :maxTamuHotelDetailButton, '#search-room-bar > div > div.tix-col-10.tix-row-nowrap > div.tix-pr-1875 > div > div > div > div.dialog-content > div > div.tix-row-nowrap > div:nth-child(1) > button:nth-child(2)'
        element :minTamuHotelDetailButton, '#search-room-bar > div > div.tix-col-10.tix-row-nowrap > div.tix-pr-1875 > div > div > div > div.dialog-content > div > div.tix-row-nowrap > div:nth-child(1) > button:nth-child(4)'
        element :cekKetersediaanButton, '#search-room-bar > div > div.tix-col-2.tix-flex-center > button'
        element :tujuanButton, '#destination-input'
        element :selesaiKamarTamuButton, '#guestAndRoom > div > div > div.popup-content > div > div.done-button > button'
        element :cariHotelButton, '#app > main > div > div.hero-section > div.widget-container > div > div.button-container > button'
        element :baliKotaButton, '#autocomplete-list-item > div.main-container > div > div.name', :match => :first
        element :cancelCheckInButton, '#checkinDate > div > div > div.widget-popup-header > i'
        element :filterHargaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(2) > div.popover-dropdown-textbox > div.left-wrap'
        element :filterAreaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(3) > div.popover-dropdown-textbox'
        element :filterBintangButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(4) > div.popover-dropdown-textbox'
        element :filterLainnyaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(5) > div.popover-dropdown-textbox'
        element :wifiFilterLainnyaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(5) > div.more-filter-popover > div.tix-pop-over.bottom-top.show > div > div > div > div:nth-child(3) > div:nth-child(2) > div:nth-child(3)'
        element :parkirFilterLainnyaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(5) > div.more-filter-popover > div.tix-pop-over.bottom-top.show > div > div > div > div:nth-child(3) > div:nth-child(2) > div:nth-child(4)'
        element :terapkanFilterLainnyaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(5) > div.more-filter-popover > div.tix-pop-over.bottom-top.show > div > div > div > div.filter-footer > button.button.default.capitalize'
        element :hotelPosition1Button, '#app > main > div > div.hotel-search-container > div.search-result > div.hotel-card-list-desktop > div:nth-child(2) > div'
        element :pesanSekarangButton, '#room-list > div.tix-column-nowrap > div:nth-child(1) > div.tix-card-body.tix-px-0.tix-py-0.room-card > div.rc-price > button'
        element :navRightCheckInButton, '#checkinDate > div > div > div.popup-content > div > div > span.nav.right'
        element :navLeftCheckInButton, '#checkinDate > div > div > div.popup-content > div > div > span.nav.left'
        element :checkInButton, '#date-input-startdate'
        element :checkOutButton, '#date-input-enddate'
        element :date23Button, '#checkinDate > div > div > div.popup-content > div > div > div:nth-child(3) > div > div > div.DayPicker > div > div.DayPicker-Months > div:nth-child(1) > div.DayPicker-Body > div:nth-child(4) > div:nth-child(5)'
        element :date25Button, '#checkoutDate > div > div > div.popup-content > div > div > div:nth-child(3) > div > div > div.DayPicker > div > div.DayPicker-Months > div:nth-child(1) > div.DayPicker-Body > div:nth-child(4) > div:nth-child(7)'
        element :maxSliderButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(2) > div:nth-child(3) > div.tix-pop-over.top-bottom.show > div > div.popover-content > div > div.rc-slider > div.rc-slider-handle.rc-slider-handle-2'
        element :minSliderButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(2) > div:nth-child(3) > div.tix-pop-over.top-bottom.show > div > div.popover-content > div > div.rc-slider > div.rc-slider-handle.rc-slider-handle-2'
        element :popOverHargaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(2) > div:nth-child(3) > div.popover-overlay-bg'
        element :popOverAreaButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(3) > div:nth-child(3) > div.popover-overlay-bg'
        element :popOverBintangButton, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(4) > div:nth-child(3) > div.popover-overlay-bg'
        element :selesaiTamuKamarHotelDetailButton, '#search-room-bar > div > div.tix-col-10.tix-row-nowrap > div.tix-pr-1875 > div > div > div > div.dialog-content > div > div.text-right.tix-py-0625.tix-px-08125.tix-border-top > button'
        # textfield
        element :minPriceTextfield, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(2) > div:nth-child(3) > div.tix-pop-over.top-bottom.show > div > div.popover-content > div > div.price-textbox-wrap > div:nth-child(1) > input[type=text]'
        element :maxPriceTextfield, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(2) > div:nth-child(3) > div.tix-pop-over.top-bottom.show > div > div.popover-content > div > div.price-textbox-wrap > div:nth-child(3) > input[type=text]'
        # checkbox
        element :bintang4Checkbox, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(4) > div:nth-child(3) > div.tix-pop-over.bottom-top.show > div > div.popover-content > div > div:nth-child(2)'
        element :seminyakAreaCheckbox, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(3) > div:nth-child(3) > div.tix-pop-over.bottom-top.show > div > div.popover-content > div > div:nth-child(3)'
        # label
        element :warningLabel, 'body > div.ab-iam-root.v3.ab-animate-in.ab-animate-out.ab-effect-modal.ab-show > div.ab-in-app-message.ab-background.ab-modal-interactions.graphic.ab-modal.ab-centered > div.ab-image-area > img'
        element :areaLabel, '.location.ellipsis'
        element :wifiFasilitasLainnyaLabel, '#app > main > div > div.hotel-search-container > div.search-result > div.hotel-card-list-desktop > div:nth-child(2) > div > a > div > div > div.detail-wrap > div.facilities > img:nth-child(3)'
        element :parkirFasilitasLainnyaLabel, '#app > main > div > div.hotel-search-container > div.search-result > div.hotel-card-list-desktop > div:nth-child(2) > div > a > div > div > div.detail-wrap > div.facilities > img:nth-child(4)'
        element :bintangLabel, '.star-wrap'
        element :bintangUnitLabel, '.tix.tixicon.tixicon-star-full'
        element :bintangLoopLabel, '.star-wrap'
        element :hotelCardListLabel, '#app > main > div > div.hotel-search-container > div.search-result > div.hotel-card-list-desktop'
        element :priceLabel, '.after-price'
        element :hotelDetailLabel, '#hotel-detail > div.top-container'
        element :bintangDropdownLabel, '#app > main > div > div.header-search-wrapper > div.filter-bar > div > div > div:nth-child(4) > div.popover-dropdown-textbox.active > div.left-wrap > div.text-wrap'
        element :priceHotelDetailLabel, '#room-list > div.tix-column-nowrap > div > div.tix-card-body.tix-px-0.tix-py-0.room-card > div.rc-price > span > span > span'
        element :totalMalamLabel, '#app > main > div > div.hero-section > div.widget-container > div > div.widget-section > div.widget-section-item.section-center > div > div.night-counter-container > div:nth-child(1)'
    end
end