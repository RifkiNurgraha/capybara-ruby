module Locators
    class CheckoutFlightLocator < SitePrism::Page
        # button
        element :titleButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.tix-core-contact-details > div:nth-child(2) > div.row.contact-name > div.col-xs-3 > div > input'
        element :tuanTitleButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.tix-core-contact-details > div:nth-child(2) > div.row.contact-name > div.col-xs-3 > div > div.list-menu.list-menu-flight-dropdown.fadeInDown-enter-done > ul > li:nth-child(2)'
        element :kodeNegaraButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-number > div.col-xs-3.tix-core-countrycode-dropdown.level-1-index > div > button'
        element :lanjutkanPembayaranButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div:nth-child(4) > button'
        element :popOverNameButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div'
        element :kewarganegaraanButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.wrapper-passenger-details > div:nth-child(2) > div > div.body-passenger-details > div:nth-child(3) > div > div > div > input'
        element :kewarganegaraanIndonesiaButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.wrapper-passenger-details > div:nth-child(2) > div > div.body-passenger-details > div:nth-child(3) > div > div > div > div.box-with-search.fadeInDown-enter-done > div.list-menu.list-menu-flight-dropdown-searchbox > ul > li'
        element :samaDenganPemesanButton, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.wrapper-passenger-details > div:nth-child(2) > div > div.heading-passenger-details > label > span.switch'
        element :yaLanjutkanPopUpButton, '#app > div > div.left-side > div:nth-child(3) > div > div.with-popup.no-full-popup.fadeOverlay-enter-done > div > div > div > div > div.btn-notif > button.v3-btn.v3-btn__blue'
        element :yaLanjutkanConfirmPopUpButton, '#app > div > div.with-popup.no-full-popup.fadeOverlay-enter-done > div > div > div > div > div.btn-notif > button'
        # textfield
        element :namaTextfield, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.tix-core-contact-details > div:nth-child(2) > div.row.contact-name > div.col-xs-9 > div > input'
        element :nomorTeleponTextfield, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.tix-core-contact-details > div:nth-child(2) > div.row.contact-number > div.col-xs-9 > div > input'
        element :alamatEmailTextfield, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.email > div > input[type=text]'
        element :kewarganegaraanTextfield, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.wrapper-passenger-details > div:nth-child(2) > div > div.body-passenger-details > div:nth-child(3) > div > div > div > div.box-with-search.fadeInDown-enter-done > div.filter > input[type=text]'
        # label
        element :hotelCheckoutDetailLabel, '#app > div > div.left-side > div:nth-child(3) > div > div.row > div > div.pull-left.main > div > div.tix-core-contact-details'
        element :priceTotalLabel, '#STICKY_AL > div > div > div.booking-summary-total > div.row.total-payment > span.pull-right.total-payment-amount'
        element :confirmPesananPopUpLabel, '#app > div > div.with-popup.no-full-popup.fadeOverlay-enter-done > div > div > div'
    end
end