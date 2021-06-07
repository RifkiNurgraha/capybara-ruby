module Locators
    class CheckoutHotelLocator < SitePrism::Page
        # button
        element :tujuanButton, '#formhome > div > div > div.form-flight > div.row.wrapper-form > div.width_228px.list-horizontal__middle.box-flightform.box-flightform__airport.box-flightform__departure > div:nth-child(2) > div.list-horizontal__middle.relative > div.airport.input-flightform'
        element :titleButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-name > div.col-xs-3.tix-core-salutation-dropdown > div > div > button > input'
        element :tuanTitleButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-name > div.col-xs-3.tix-core-salutation-dropdown > div > div > div > ul > li:nth-child(1) > button'
        element :kodeNegaraButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-number > div.col-xs-3.tix-core-countrycode-dropdown.level-1-index > div > button'
        element :afghanistanKodeNegaraButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-number > div.col-xs-3.tix-core-countrycode-dropdown.level-1-index > div > div > ul > li:nth-child(2) > button'
        element :lanjutkanPembayaranButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > button'
        element :popOverNameButton, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-name > div.col-xs-9.name-input-container > div > label'
        # textfield
        element :namaTextfield, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-name > div.col-xs-9.name-input-container > div > input[type=text]'
        element :nomorTeleponTextfield, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.contact-number > div.col-xs-9.tix-core-textinput.phone-input.fixed-label > input[type=text]'
        element :alamatEmailTextfield, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > form > div.panel.tix-core-panel.tix-px-1875.tix-py-1875.tix-mb-1875 > div.tix-core-contact-details > div > div.row.tix-pb-1875.email > div > input[type=text]'
        # label
        element :warningLabel, 'body > div.ab-iam-root.v3.ab-animate-in.ab-animate-out.ab-effect-modal.ab-show > div.ab-in-app-message.ab-background.ab-modal-interactions.graphic.ab-modal.ab-centered > div.ab-image-area > img'
        element :hotelCheckoutDetailLabel, '#hotel-checkout > div > div.tix-col-8.tix-column-nowrap.tix-pr-0625 > div.checkout-review-booking.hc-card.tix-row-nowrap.tix-mb-1875.tix-px-0625.tix-py-1'
        element :priceTotalLabel, '#hotel-checkout > div > div.tix-col-4.tix-pl-0625 > div > div > div.tix-flex-left-right.tix-px-1.tix-py-0875.final-price > span.value.tix-text-orange'
    end
end